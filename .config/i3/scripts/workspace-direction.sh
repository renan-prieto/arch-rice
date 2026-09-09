#!/bin/bash

TARGET="$1"
PROPERTY="_MY_CUSTOM_WORKSPACE_SWITCH"

# Workspace atual do i3
CURRENT=$(i3-msg -t get_workspaces |
    jq -r '.[] | select(.focused == true) | .num')

if [[ -z "$CURRENT" || -z "$TARGET" ]]; then
    exit 1
fi

if (( CURRENT == TARGET )); then
    exit 0
fi

# EWMH usa índice começando em 0.
CURRENT_EWMH=$((CURRENT - 1))
TARGET_EWMH=$((TARGET - 1))

# Direção:
# indo para workspace maior -> entra pela direita / sai pela esquerda
# indo para workspace menor -> entra pela esquerda / sai pela direita
if (( TARGET > CURRENT )); then
    CURRENT_VALUE=1
    TARGET_VALUE=2
else
    CURRENT_VALUE=2
    TARGET_VALUE=1
fi

# Pega TODAS as janelas do workspace atual
CURRENT_WINDOWS=$(wmctrl -l | awk -v ws="$CURRENT_EWMH" '$2 == ws {print $1}')

# Pega TODAS as janelas do workspace destino
TARGET_WINDOWS=$(wmctrl -l | awk -v ws="$TARGET_EWMH" '$2 == ws {print $1}')

# Marca as janelas que estão saindo
for WIN in $CURRENT_WINDOWS; do
    xprop -id "$WIN" \
        -f "$PROPERTY" 32c \
        -set "$PROPERTY" "$CURRENT_VALUE" \
        >/dev/null 2>&1
done

# Marca as janelas que estão entrando
for WIN in $TARGET_WINDOWS; do
    xprop -id "$WIN" \
        -f "$PROPERTY" 32c \
        -set "$PROPERTY" "$TARGET_VALUE" \
        >/dev/null 2>&1
done

# Troca de workspace
i3-msg "workspace number $TARGET" >/dev/null

# Remove as propriedades depois da animação
(
    sleep 0.55

    for WIN in $(wmctrl -l | awk '{print $1}'); do
        xprop -id "$WIN" \
            -remove "$PROPERTY" \
            >/dev/null 2>&1
    done
) &
