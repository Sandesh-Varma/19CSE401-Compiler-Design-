%{
#include <stdio.h>
#include <ctype.h>
%}

%%
[a-zA-Z]+ {
    for (int i = 0; yytext[i]; i++)
        putchar(toupper(yytext[i]));
    putchar('\n');
}
.|\n  ;
%%

int main() {
    yylex();
    return 0;
}
