%{
int words = 0;
%}

%%
[ \t\n]+         ;
[a-zA-Z0-9_]+    { words++; }
.                ;
%%

int main() {
    yylex();
    printf("Total words: %d\n", words);
    return 0;
}
