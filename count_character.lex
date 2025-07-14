%{
int count = 0;
%}

%%
.   { count++; }
\n  { return 0; }
%%

int main() {
    yylex();
    printf("Total characters: %d\n", count);
    return 0;
}
