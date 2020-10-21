/*Definition*/ 
%{ 
%}

/*Starting for multiline comment*/ 
start \/\* 
/*Ending for multiline comment*/ 
end  \*\/ 
  
%%   
\/\/(.*) ;  
{start}.*{end} ;   
%% 
  
int yywrap(void){} 

int main(int k,char **argcv) 
{ 
yyin=fopen("input.c","r"); 
yyout=fopen("out.c","w"); 
yylex(); 
return 0; 
} 