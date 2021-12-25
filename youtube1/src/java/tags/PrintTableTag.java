
package tags;

import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.TagSupport;

public class PrintTableTag extends TagSupport{
    public int number ;

    public void setNumber(int number) {
        this.number = number;
    }

    public int getNumber() {
        return number;
    }
    
    @Override
    public int doStartTag() throws JspException {
        JspWriter out = pageContext.getOut();
        for(int i = 1 ; i < 11;i++){
            try {
                out.println( getNumber() + " * " + i +" = "+getNumber()* i);
               out.print("<br>");
            } catch (IOException ex) {
                Logger.getLogger(PrintTableTag.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        return SKIP_BODY;
    }
    
}
