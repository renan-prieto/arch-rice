const char *colorname[] = {

  /* 8 normal colors */
  [0] = "#121518", /* black   */
  [1] = "#B2A35C", /* red     */
  [2] = "#5D7083", /* green   */
  [3] = "#B1739C", /* yellow  */
  [4] = "#68B6C5", /* blue    */
  [5] = "#DA96AF", /* magenta */
  [6] = "#C5A5BC", /* cyan    */
  [7] = "#cbe6f0", /* white   */

  /* 8 bright colors */
  [8]  = "#8ea1a8",  /* black   */
  [9]  = "#B2A35C",  /* red     */
  [10] = "#5D7083", /* green   */
  [11] = "#B1739C", /* yellow  */
  [12] = "#68B6C5", /* blue    */
  [13] = "#DA96AF", /* magenta */
  [14] = "#C5A5BC", /* cyan    */
  [15] = "#cbe6f0", /* white   */

  /* special colors */
  [256] = "#121518", /* background */
  [257] = "#cbe6f0", /* foreground */
  [258] = "#cbe6f0",     /* cursor */
};

/* Default colors (colorname index)
 * foreground, background, cursor */
 unsigned int defaultbg = 0;
 unsigned int defaultfg = 257;
 unsigned int defaultcs = 258;
 unsigned int defaultrcs= 258;
