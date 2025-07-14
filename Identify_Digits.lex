%%
[0-9]+      { printf("Digit: %s\n", yytext); }
.|\n        ;
%%

int main() {
    yylex();
    return 0;
}
