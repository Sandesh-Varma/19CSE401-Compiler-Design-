%%
[0-9]+    { printf("Integer: %s\n", yytext); }
.|\n      ;
%%

int main() {
    yylex();
    return 0;
}
