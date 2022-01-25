# include <stdlib.h>
# include <stdio.h>
# include <string.h>

/*
 * See https://theweeklychallenge.org/blog/perl-weekly-challenge-149
 */

/*
 * Run as: cc -o ch-2.o ch-2.c; ./ch-2.o < input-file
 */

int main (void) {
    char * A287298 [23];
    int n;

    A287298 [ 0] =                     NULL;
    A287298 [ 1] =                     NULL;
    A287298 [ 2] =                      "1";
    A287298 [ 3] =                      "1";
    A287298 [ 4] =                   "3201";
    A287298 [ 5] =                   "4301";
    A287298 [ 6] =                 "452013";
    A287298 [ 7] =                "6250341";
    A287298 [ 8] =               "47302651";
    A287298 [ 9] =              "823146570";
    A287298 [10] =             "9814072356";
    A287298 [11] =            "A8701245369";
    A287298 [12] =           "B8750A649321";
    A287298 [13] =           "CBA504216873";
    A287298 [14] =         "DC71B30685A924";
    A287298 [15] =        "EDAC93B24658701";
    A287298 [16] =       "FED5B39A42706C81";
    A287298 [17] =       "GFED5A31C6B79802";
    A287298 [18] =     "HGF80ADC53712EB649";
    A287298 [19] =    "IHGFD3408C6E715A2B9";
    A287298 [20] =   "JIHG03DAC457BFE96281";
    A287298 [21] =                     NULL;
    A287298 [22] = "LKJIG5D14B9032FHAC867E";

    while (scanf ("%d", &n) == 1) {
        if (n > 22 || A287298 [n] == NULL) {
            printf ("Too hard to calculate\n");
        }
        else {
            printf ("%s\n", A287298 [n]);
        }
    }

    return (0);
}
