<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Join Email List</title>
    <style>
        body {
            font-family: Arial, Helvetica, sans-serif;
            background: linear-gradient(135deg, #4facfe, #00f2fe);
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .container {
            background: #fff;
            padding: 30px 40px;
            border-radius: 15px;
            box-shadow: 0 8px 20px rgba(0,0,0,0.2);
            width: 400px;
            text-align: center;
        }

        h1 {
            margin-bottom: 20px;
            color: #333;
        }

        form {
            text-align: left;
        }

        form label {
            display: block;
            font-weight: bold;
            margin-bottom: 5px;
            color: #444;
        }

        form input[type="text"],
        form input[type="email"] {
            width: 100%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 8px;
            margin-bottom: 15px;
            transition: 0.3s;
        }

        form input[type="text"]:focus,
        form input[type="email"]:focus {
            border-color: #4facfe;
            outline: none;
            box-shadow: 0 0 5px rgba(79,172,254,0.5);
        }

        form input[type="submit"] {
            width: 100%;
            padding: 12px;
            background: #4facfe;
            border: none;
            border-radius: 8px;
            color: white;
            font-size: 16px;
            font-weight: bold;
            cursor: pointer;
            transition: background 0.3s ease;
        }

        form input[type="submit"]:hover {
            background: #00c6ff;
        }

        p.error {
            color: red;
            font-weight: bold;
            margin-bottom: 15px;
        }
    </style>
</head>
<body>
<div class="container">
    <h1>Join our email list</h1>

    <c:if test="${not empty error}">
        <p class="error">${error}</p>
    </c:if>

    <form action="users" method="post">
        <input type="hidden" name="action" value="add">

        <label>Email:</label>
        <input type="email" name="email" required value="${email}">

        <label>First Name:</label>
        <input type="text" name="firstName" required value="${firstName}">

        <label>Last Name:</label>
        <input type="text" name="lastName" required value="${lastName}">

        <input type="submit" value="Join Now">
    </form>
</div>
</body>
</html>
