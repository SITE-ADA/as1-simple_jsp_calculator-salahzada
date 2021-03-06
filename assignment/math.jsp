<%-- 
In this page User will see own calculation.

All calculation done in each functions.

Manual Exceptions:
1) ZeroDivision error handled as ArithmeticException.
2) Valid operation code handled as NullPointerException.

 --%>
 
<%@ page errorPage="errorPage.jsp" %>
    <html>

    <head>
        <title>Math Operators</title>
        <style>
            .content {
                text-align: center;
                border: 4px dotted gray;
            }
            
            .report {
                font-weight: bold;
                display: block;
                margin-top: 20px;
            }
            
            .header {
                font-size: 30px;
                font-family: 'Gill Sans', 'Gill Sans MT', 'Calibri', 'Trebuchet MS', sans-serif
            }
        </style>
    </head>

    <body>
        <div class="content">
            <%
    String p1=new String(request.getParameter("p1"));
    String p2=new String(request.getParameter("p2"));
    String op=new String(request.getParameter("op"));
%>
                <%!
    public boolean isParsable(String p) {
        try {
            Integer.parseInt(p);
            return true;
        } catch (final NumberFormatException e) {
            return false;
        }
    }



    public String add(String p1, String p2) throws ArithmeticException {
        if (isParsable(p1) && isParsable(p2)) {
            Integer sum = Integer.parseInt(p1) + Integer.parseInt(p2);
            return "<p><i>" + p1 + "+" + p2 + "=" + sum;
        } else {
            Double sum = Double.parseDouble(p1) + Double.parseDouble(p2);
            if (sum.toString().endsWith(".0")) {
                return "<p><i>" + p1 + "+" + p2 + "=" + sum.intValue();
            } else {
                return "<p><i>" + p1 + "+" + p2 + "=" + sum;
            }
        }
    }

    public String subs(String p1, String p2) throws ArithmeticException {
        if (isParsable(p1) && isParsable(p2)) {
            Integer subs = Integer.parseInt(p1) - Integer.parseInt(p2);
            return "<p><i>" + p1 + "-" + p2 + "=" + subs;
        }else{
            Double sub = Double.parseDouble(p1) - Double.parseDouble(p2);
            if (sub.toString().endsWith(".0")) {
                return "<p><i>" + p1 + "-" + p2 + "=" + sub.intValue();
            } else {
                return "<p><i>" + p1 + "-" + p2 + "=" + sub;
            }
        }
    }
    public String mult(String p1, String p2) throws ArithmeticException {
        if (isParsable(p1) && isParsable(p2)) {
            Integer mul = Integer.parseInt(p1) * Integer.parseInt(p2);
            return "<p><i>" + p1 + "*" + p2 + "=" + mul;
        } else {
            Double mul = Double.parseDouble(p1) * Double.parseDouble(p2);
            if (mul.toString().endsWith(".0")) {
                return "<p><i>" + p1 + "*" + p2 + "=" + mul.intValue();
            } else {
                return "<p><i>" + p1 + "*" + p2 + "=" + mul;
            }
        }
    }

    public String divs(String p1, String p2) {
        if(p2.equals("0")){
            throw new ArithmeticException("Division to 0 is not allowed");
        }
        Double div = Double.parseDouble(p1) / Double.parseDouble(p2);
        if (isParsable(p1) && isParsable(p2)) {
            if (div.toString().endsWith(".0")) {
                return "<p><i>" + p1 + "/" + p2 + "=" + div.intValue();
            } else {
                return "<p><i>" + p1 + "/" + p2 + "=" + div;
            }
        } else {
            if (div.toString().endsWith(".0")) {
                return "<p><i>" + p1 + "/" + p2 + "=" + div.intValue();
            } else {
                return "<p><i>" + p1 + "/" + p2 + "=" + div;
            }
        }
    }


%>
                    <%
    switch(op){
        case "add":
            out.println("<h1 class=\"header\">Addition</h1>");
            out.println(add(p1, p2));

            break;
        case "sub":
            out.println("<h1 class=\"header\">Subtraction</h1>");
            out.println(subs(p1,p2));
            break;
        case "mul":
            out.println("<h1 class=\"header\">Multiplication</h1>");
            out.println(mult(p1,p2));
            break;
        case "div":
            out.println("<h1 class=\"header\">Division</h1>");
                out.println(divs(p1,p2));
            break;
        default:
throw new NullPointerException("Please insert valid operation code (add, sub, div, mul)");
    }


%>

                        <a class="report" href="report.jsp">Detailed Information</a>
        </div>

    </body>

    </html>