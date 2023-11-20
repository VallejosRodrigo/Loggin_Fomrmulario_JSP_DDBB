<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>   
    
<%@ page import="com.rodri.*, java.sql.*" %>


<!DOCTYPE html>

<html>
<head>
<meta charset="ISO-8859-1">
<title>Tabla de registros</title>
</head>
<body>

<%
try{
	String usuario_ = request.getParameter("usuario");
	String contrasena_ = request.getParameter("contrasena");
	
	String dni_ = request.getParameter("dni");
	String apellido_ = request.getParameter("apellido");
	String nombre_ = request.getParameter("nombre");
	String edad_ = request.getParameter("edad");
	String sexo_ = request.getParameter("sexo");
	String pais_ = request.getParameter("pais");
	String provincia_ = request.getParameter("provincia");
	String ciudad_ = request.getParameter("ciudad");
	String peso_ = request.getParameter("peso");
	String faixa_ = request.getParameter("faixa");
	String grados_ = request.getParameter("grados");
	String academia_ = request.getParameter("academia");
	String cate_edad_ = request.getParameter("cate_edad");
	String cate_peso_ = request.getParameter("cate_peso");
	String numero_tel_ = request.getParameter("numero_tel");
	String email_ = request.getParameter("email");

	Class.forName("com.mysql.jdbc.Driver");

	ConexionBD conec = new ConexionBD();
	
   	Connection conexion = conec.dameConexion();
   
   	Statement statement = conexion.createStatement();
   
   	String updateSQL = "INSERT INTO atletasbjj(USUARIO, CONTRASENA, APELLIDO, NOMBRE, EDAD, SEXO, PAIS, PROVINCIA, CIUDAD, PESO, FAIXA, GRADOS, ACADEMIA, CATEGORIA_EDAD, CATEGORIA_PESO, TELEFONO, EMAIL) VALUES ('"+ usuario_ +"','"+ contrasena_ +"','"+ apellido_ +"','"+ nombre_ +"',"+ edad_ +",'"+ sexo_ +"','"+ pais_ +"','"+ provincia_ +"','"+ ciudad_ +"',"+ peso_ +",'"+ faixa_ +"',"+ grados_ +",'"+ academia_ +"','"+ cate_edad_ +"','"+ cate_peso_ +"',"+ numero_tel_ +",'"+ email_ +"')";
   
   	statement.executeUpdate(updateSQL);   
   	
   	out.println("<h1>Registrado exitosamente!!</h1>");
   	
   	out.println("<p><label><b><a href='Loggin.jsp'>Presione AQUI para ingresar a su cuenta</a></b></label></p>");
   	
   	
}catch(Exception e){
	
	out.println("<h1>Algo salió mal... Intente registrarse nuevamente! </h1>");
	
	out.println("<br>");
	
	out.println("<h2><a href='formulario.html'><b>Pulse aquí para volver al registro</b></a></h2>");
	
	out.println("<h2><a href='Loggin.jsp'><b>Ir al Loggin</b></a></h2>");
	
}
   %>
   

 
   



</body>
</html>