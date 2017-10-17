/*NAME:VENKAT KRISHNA ROHITH PABBATHI
UCID:VP375
NJITID:31390939
MONDAY 6PM TO 9PM
*/
import java.io.BufferedReader;
import java.io.InputStreamReader;

public class cpl {
    static String inp;
    public static void main (String[] args) throws java.lang.Exception
    {
        System.out.println("Enter RHS");
        BufferedReader in = new BufferedReader(new InputStreamReader(System.in));
        String str = in.readLine();
        inp=str.substring(0,1);
        String outp=str.substring(str.lastIndexOf(">")+1);
                        
        convert(outp);
    }
    static String convert(String k){    //this function generates rules using Rhs
        int flag=0;
        k=removebraces(k);
        String f,s;
        f=k.charAt(0)+"";
        s=k.substring(1);
        if(!Character.isUpperCase(f.charAt(0))){    //check for terminal
            f="<"+f+">";
            flag=1;
        }
        if(s.length()>1)    //check how many more characters are present
            s="<"+s+">";
        else if(s.length()==1 && !Character.isUpperCase(s.charAt(0)))
            s="<"+s+">";
        k=f+s;
        System.out.println(inp+" -> "+k);    //print rules from Rhs
        if (flag==1)
        {
            System.out.println(f+" -> "+removebraces(f));    //print terminal rules
            flag=0;
        }
        k=s;
        inp=s;
        s=removebraces(s);        
        if(s.length()>1)    //check if more characters are present to convert
            convert(k);
        if(s.length()==1 && !Character.isUpperCase(s.charAt(0)))
            System.out.println(s+" -> "+"<"+s+">");
        return k;            
    }
    static String removebraces(String a){    //this function removes < and > characters
        if(a.length()>1){
        if(a.charAt(0)=='<' && a.charAt(a.length()-1)=='>')
            a=a.substring(1,a.length()-1);
        }
        return a;
    }
}