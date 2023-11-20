<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*, com.rodri.*"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="ISO-8859-1">
<title>Insert title here</title>

<style>
        /* Estilos CSS para el div */
        #miDiv {
            width: 800px;
            height: 200px;
            border: 1px solid black;
            padding: 20px;
            margin: 20px;
        }
     
     	.azul { background-color: lightblue; }
        .rojo { background-color: tomato; }
        .verde { background-color: lightgreen; }
        .amarillo { background-color: #ffff99; }
    </style>

</head>
<body>

<%
	String usuari = request.getParameter("usuarioL");
	String contrase = request.getParameter("contrasenaL");
	
	Class.forName("com.mysql.jdbc.Driver");
	
	try{
	
	ConexionBD conect = new ConexionBD();
	
	Connection conexion = conect.dameConexion();
	
	PreparedStatement preparedStatement = conexion.prepareStatement("SELECT * FROM atletasbjj WHERE USUARIO=? AND CONTRASENA=?", ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_READ_ONLY);
	
	preparedStatement.setString(1, usuari);
	preparedStatement.setString(2, contrase);
	
	ResultSet resultSet = preparedStatement.executeQuery();
	
	if(resultSet.absolute(1)){
		
	         out.println("<h1>Ingresado Correctamente!</h1>");
   
	         out.println("<br></br>");
	   	 
	      
	        out.println("<div class='miDiv azul'>"); 
	        
	         out.println("<h2>Tus Datos: </h2>");
	         
	         
	     out.println("<table border='1'>");
				
				out.println("<tr>");
					out.println("<th><b>USUARIO</b></th>");
					out.println("<th><b>CONTRASEÑA</b></th>");
					out.println("<th><b>APELLIDO</b></th>");
					out.println("<th><b>NOMBRE</b></th>");
					out.println("<th><b>EDAD</b></th>");
					out.println("<th><b>SEXO</b></th>");
					out.println("<th><b>PAIS</b></th>");
					out.println("<th><b>PROVINCIA</b></th>");
					out.println("<th><b>CIUDAD</b></th>");
				out.println("</tr>");	
		
				out.println("<tr>");
					out.println("<td>"+resultSet.getString("USUARIO")+"</td>");
					out.println("<td>"+resultSet.getString("CONTRASENA")+"</td>");
					out.println("<td>"+resultSet.getString("APELLIDO")+"</td>");
					out.println("<td>"+resultSet.getString("NOMBRE")+"</td>");
					out.println("<td>"+resultSet.getString("EDAD")+"</td>");
					out.println("<td>"+resultSet.getString("SEXO")+"</td>");
					out.println("<td>"+resultSet.getString("PAIS")+"</td>");
					out.println("<td>"+resultSet.getString("PROVINCIA")+"</td>");
					out.println("<td>"+resultSet.getString("CIUDAD")+"</td>");
				out.println("</tr>");
				
		out.println("</table>");		
				
out.println("<br>");
		
		out.println("<table border='1'>");
		
				out.println("<tr>");
					out.println("<th><b>PESO</b></th>");
					out.println("<th><b>FAIXA</b></th>");
					out.println("<th><b>GRADOS</b></th>");
					out.println("<th><b>ACADEMIA</b></th>");
					out.println("<th><b>CATEGORIA_EDAD</b></th>");
					out.println("<th><b>CATEGORIA_PESO</b></th>");
					out.println("<th><b>TELEFONO</b></th>");
					out.println("<th><b>EMAIL</b></th>");
				out.println("</tr>");
	         
				out.println("<tr>");
					out.println("<td>"+resultSet.getString("PESO")+"</td>");
					out.println("<td>"+resultSet.getString("FAIXA")+"</td>");
					out.println("<td>"+resultSet.getString("GRADOS")+"</td>");
					out.println("<td>"+resultSet.getString("ACADEMIA")+"</td>");
					out.println("<td>"+resultSet.getString("CATEGORIA_EDAD")+"</td>");
					out.println("<td>"+resultSet.getString("CATEGORIA_PESO")+"</td>");
					out.println("<td>"+resultSet.getString("TELEFONO")+"</td>");
					out.println("<td>"+resultSet.getString("EMAIL")+"</td>");
				out.println("</tr>");
				
		out.println("</table>");
				

		out.println("</div>");  
		//------------------------------------------------------------------------------------
	    out.println("<br></br>");
	         
out.println("<div class='miDiv verde'>"); 
	                  
	         out.println("<h2>Todos los atletas inscriptos: </h2>");
	         
			Statement statement = conexion.createStatement();
			
			ResultSet resul = statement.executeQuery("SELECT * FROM atletasbjj");
			
		out.println("<table border='1'>");
			
			out.println("<tr>");
				out.println("<th><b>APELLIDO</b></th>");
				out.println("<th><b>NOMBRE</b></th>");
				out.println("<th><b>SEXO</b></th>");
				out.println("<th><b>PAIS</b></th>");
				out.println("<th><b>FAIXA</b></th>");
				out.println("<th><b>GRAU</b></th>");
				out.println("<th><b>ACADEMIA</b></th>");
				out.println("<th><b>CATEGORIA EDAD</b></th>");
				out.println("<th><b>CATEGORIA PESO</b></th>");
			out.println("</tr>");
			
			while(resul.next()){			
				
				out.println("<tr>");
					out.println("<td>" +resul.getString("APELLIDO")+ "</td>");
					out.println("<td>" +resul.getString("NOMBRE")+ "</td>");
					out.println("<td>" +resul.getString("SEXO")+ "</td>");
					out.println("<td>" +resul.getString("PAIS")+ "</td>");
					out.println("<td>" +resul.getString("FAIXA")+ "</td>");
					out.println("<td>" +resul.getString("GRADOS")+ "</td>");
					out.println("<td>" +resul.getString("ACADEMIA")+ "</td>");
					out.println("<td>" +resul.getString("CATEGORIA_EDAD")+ "</td>");
					out.println("<td>" +resul.getString("CATEGORIA_PESO")+ "</td>");
				out.println("</tr>");	
			}
		out.println("</table>");
		
out.println("</div>");  

out.println("<br>");


out.println("<h2><a href='formulario.html'><b>Presione aqui para registrar otro atleta</b></a></h2>");
out.println("<h1><a href='Loggin.jsp'><b>SALIR</b></a></h1>");



		
		
	}else{
		out.println("<h1>Usuario o Contraseña Incorrecto</h1>");
		
		out.println("<br>");
		
		out.println("<h2><a href='Loggin.jsp'><b>Pulse aquí para volver al Loggin</b></a></h2>");
		
	}
	
	
	}catch(SQLException ex){
		out.println("ERROR: " +ex.getMessage());
		ex.printStackTrace();
	}
%>




</body>
</html>