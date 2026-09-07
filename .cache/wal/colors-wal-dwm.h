static const char norm_fg[] = "#cbe6f0";
static const char norm_bg[] = "#121518";
static const char norm_border[] = "#8ea1a8";

static const char sel_fg[] = "#cbe6f0";
static const char sel_bg[] = "#5D7083";
static const char sel_border[] = "#cbe6f0";

static const char urg_fg[] = "#cbe6f0";
static const char urg_bg[] = "#B2A35C";
static const char urg_border[] = "#B2A35C";

static const char *colors[][3]      = {
    /*               fg           bg         border                         */
    [SchemeNorm] = { norm_fg,     norm_bg,   norm_border }, // unfocused wins
    [SchemeSel]  = { sel_fg,      sel_bg,    sel_border },  // the focused win
    [SchemeUrg] =  { urg_fg,      urg_bg,    urg_border },
};
