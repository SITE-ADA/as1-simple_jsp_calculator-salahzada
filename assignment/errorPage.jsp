<%-- 
    This page retuns the exception if problem occurs in math.jsp
    
     --%>

<%@ page isErrorPage="true"%>

    <html>

    <head>
        <title>Error Page</title>
    </head>

    <style>
        .error {
            display: flex;
            justify-content: center;
            color: white;
            padding: 10px;
            border: 1px solid rgba(53, 10, 10, 0.555);
            background-color: red;
            border-radius: 20px;
            text-decoration: none;
        }
        
        .error:hover {
            cursor: pointer;
            background-color: rgb(0, 0, 0);
            color: rgb(255, 0, 0);
            transition: 1s;
        }
        
        h2 {
            color: red;
            text-align: center;
        }
    </style>

    <body>
        <h2>Your Error:</h2>
        <a href="index.html" class="error">${pageContext.exception}</a>
    </body>

    </html>