
<% String userAgent=request.getHeader("user-agent"); %>

    <html>

    <head>
        <title>report Page</title>
    </head>

    <style>
        .error {
            display: flex;
            justify-content: center;
            color: white;
            padding: 20px;
            border: 1px solid rgba(53, 10, 10, 0.555);
            background-color: red;
            border-radius: 20px;
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
        <h2>Your Information:</h2>
        <p class="error"><%=userAgent%></p>
    
  
    </body>

    </html>