package textcleaner;
import java.util.ArrayList;

%%
%unicode 
%line
%column
%int
%class Lex
%standalone
%state SCRIPT
%state TAGCLEAN

%{
    String str = "";
    ArrayList<String> texto = new ArrayList();
%}

cosas = [\s]|[\S]
initTag = "<"
closeTag = ">"
initEndTag = "</"
tag = {initTag}{cosas}*{closeTag}
endtag = {initEndTag}{cosas}*{closeTag}

%%
<YYINITIAL>
{
    {tag}       {str = "";yybegin(TAGCLEAN);}
    .           {System.out.println("Holaaa");}
}

<TAGCLEAN>
{
    {endtag}    {System.out.println(str);texto.add(str);yybegin(1);}
    .           {str += yytext();}
}