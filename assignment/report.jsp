<% 
// This Page creates client information of the user.

String userAgent=request.getHeader("user-agent");  //The browser Client using
    String accept=request.getHeader("accept"); //the document client using
    String accLang=request.getHeader("accept-language"); // the language client using

     %>

    <html>

    <head>
        <title>Report Page</title>
    </head>

    <style>
        * {
            font-family: 'Franklin Gothic Medium', 'Arial Narrow', 'Arial', 'sans-serif';
        }
        
        .error {
            display: flex;
            justify-content: center;
            color: white;
            padding: 10px;
            border: 1px solid rgba(53, 10, 10, 0.555);
            background-color: rgb(131, 131, 131);
            border-radius: 20px;
        }
        
        .error:hover {
            background-color: rgb(0, 0, 0);
            color: rgb(250, 250, 250);
            transition: 1s;
        }
        
        h2 {
            color: rgb(71, 71, 71);
            text-align: center;
        }
        
        p span {
            text-decoration: underline;
            font-style: italic;
        }
    </style>

    <body>
        <h2><i>Your Information:</i></h2>
        <p class="error">
            User-Agent: &nbsp;
            <span> <%=userAgent%></span>
        </p>
        <p class="error">
            Accept:&nbsp;
            <span><%=accept%></span>
        </p>
        <p class="error">
            Accept-Language:&nbsp;
            <span> <%=accLang%></span>
        </p>



    </body>

    </html>