<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

 <title>Tabla con Estilos</title>
    <style>
        table {
            border-collapse: collapse;
            width: 50%;
            margin-bottom: 20px;
        }
        th, td {
            border: 1px solid #ddd;
            padding: 8px;
            text-align: left;
        }
        th {
            background-color: #f2f2f2;
        }
        tr:nth-child(even) {
            background-color: #f9f9f9;
        }
        tr:hover {
            background-color: #f5f5f5;
        }
        input[type="text"], input[type="password"], input[type="submit"] {
            padding: 5px;
            margin: 5px 0;
            border: 1px solid #ccc;
            border-radius: 3px;
        }
        input[type="submit"] {
            background-color: #4CAF50;
            color: white;
            border: none;
            cursor: pointer;
        }
        input[type="submit"]:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>

<h1>Loggin</h1>

<form action="procesar_loggin.jsp" method="post">
    <table>
        <tr>
            <th>Usuario:</th>
            <td><input type="text" name="usuarioL"></td>
        </tr>
        <tr>
            <th>Contraseña:</th>
            <td><input type="password" name="contrasenaL"></td>
        </tr>
        <tr>
            <td colspan="2"><input type="submit" value="- INGRESAR -"></td>
        </tr>
    </table>
</form>
	
	<br>
	<h2><a href="formulario.html"><b>Presione aqui para registrar otro atleta</b></a></h2>
	
</body>
</html>