%{
#include"y.tab.h"
%}
%%
a {return A;}
b {return B;}
p {return P;}
q {return Q;}
c {return C;}
g {return G;}
h {return H;}
i {return I;}
\n return yytext[0];
. {return yytext[0];}
%%
int yywrap()
{
return 1;
}
