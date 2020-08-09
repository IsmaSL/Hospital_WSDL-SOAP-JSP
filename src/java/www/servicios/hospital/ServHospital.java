/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package www.servicios.hospital;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import javax.jws.WebService;

/**
 *
 * @author Isma
 */
@WebService(serviceName = "servHosp", portName = "servHospPort", endpointInterface = "com.itorizaba.servhosp.ServHospPortType", targetNamespace = "http://www.itorizaba.com/servHosp.wsdl", wsdlLocation = "WEB-INF/wsdl/ServHospital/servHosp.wsdl")
public class ServHospital {

    public com.itorizaba.servhosp.ArrPacientes pacPorCiudad(java.lang.String ciudad) {
        //TODO implement this method
        //throw new UnsupportedOperationException("Not implemented yet.");
        com.itorizaba.servhosp.ArrPacientes arr = new com.itorizaba.servhosp.ArrPacientes();
        boolean band = false;
        
        // Comprueba que esté controlador
        try {
            Class.forName("org.postgresql.Driver").newInstance();
            band = true;
        } catch (ClassNotFoundException | InstantiationException | IllegalAccessException ex) {
            band = false;
            System.out.println("Fallo driver: " + ex);
        } 
        // Ejecuta consulta
        String consulta = "";
        Connection conn = null;
        try {
            conn = DriverManager.getConnection("jdbc:postgresql://localhost/servhospital", "postgres", "holamundo");
        } catch (SQLException se) {
            consulta += "\nMensaje: " + se.getMessage();
            consulta += "\nEstado: " + se.getSQLState();
            consulta += "\nError: " + se.getErrorCode();
            System.out.println("Fallo: " + consulta);
        }
        // Ejecuta consulta
        try {
            Statement stat = conn.createStatement();
            ResultSet rs = stat.executeQuery("SELECT * FROM paciente WHERE ciudad='"+ciudad+"' ORDER BY noexp;");
            
            while (rs.next()) {
                com.itorizaba.servhosp.Paciente p = new com.itorizaba.servhosp.Paciente();
                
                p.setNoExp(rs.getString("noexp"));
                p.setNombre(rs.getString("nombre"));
                p.setApellidos(rs.getString("apellidos"));
                p.setDireccion(rs.getString("direccion"));
                p.setTelefono(rs.getString("telefono"));
                p.setCiudad(rs.getString("ciudad"));
            
                arr.getItem().add(p);
            }
            conn.close();
        } catch (SQLException se) {
            consulta += "LMensaje: " + se.getMessage();
            consulta += "LEstado: " + se.getSQLState();
            consulta += "LError: " + se.getErrorCode();
        }
        return arr;
        
    }

    public com.itorizaba.servhosp.ArrConsultas obtenerDetalles(java.lang.String noExp) {
        //TODO implement this method
        //throw new UnsupportedOperationException("Not implemented yet.");
        com.itorizaba.servhosp.ArrConsultas arr = new com.itorizaba.servhosp.ArrConsultas();
        boolean band = false;
        
        // Comprueba que esté controlador
        try {
            Class.forName("org.postgresql.Driver").newInstance();
            band = true;
        } catch (ClassNotFoundException | InstantiationException | IllegalAccessException ex) {
            band = false;
            System.out.println("Fallo driver: " + ex);
        } 
        
        // Ejecuta consulta
        String consulta = "";
        Connection conn = null;
        try {
            conn = DriverManager.getConnection("jdbc:postgresql://localhost/servhospital", "postgres", "holamundo");
        } catch (SQLException se) {
            consulta += "\nMensaje: " + se.getMessage();
            consulta += "\nEstado: " + se.getSQLState();
            consulta += "\nError: " + se.getErrorCode();
            System.out.println("Fallo: " + consulta);
        }
        // Ejecuta consulta
        try {
            Statement stat = conn.createStatement();
            ResultSet rs = stat.executeQuery("SELECT pac.noexp, pac.nombre, pac.apellidos, con.consultorio, con.noPiso, con.medico, con.especialidad, con.fecCon, con.observacion \n" +
                                             "FROM paciente as pac, consulta as con \n" +
                                             "WHERE pac.noexp = '"+noExp+"' and con.noexp = '"+noExp+"' \n"+
                                             "ORDER BY feccon DESC \n" +
                                             "LIMIT 3;");
            
            while (rs.next()) {
                com.itorizaba.servhosp.Consulta c = new com.itorizaba.servhosp.Consulta();

                c.setNoExp(rs.getString("noexp"));
                c.setNombre(rs.getString("nombre"));
                c.setApellidos(rs.getString("apellidos"));
                c.setConsultorio(rs.getString("consultorio"));
                c.setNoPiso(rs.getString("nopiso"));
                c.setMedico(rs.getString("medico"));
                c.setEspecialidad(rs.getString("especialidad"));
                c.setFecCon(rs.getString("feccon"));
                c.setObservacion(rs.getString("observacion"));

                arr.getItem().add(c);
            }
            conn.close();
        } catch (SQLException se) {
            consulta += "LMensaje: " + se.getMessage();
            consulta += "LEstado: " + se.getSQLState();
            consulta += "LError: " + se.getErrorCode();
        }
        
        return arr;
    }

    public com.itorizaba.servhosp.ArrPacientes obtenerPacientes() {
        //TODO implement this method
        //throw new UnsupportedOperationException("Not implemented yet.");
        com.itorizaba.servhosp.ArrPacientes arr = new com.itorizaba.servhosp.ArrPacientes();
        boolean band = false;
        
        // Comprueba que esté controlador
        try {
            Class.forName("org.postgresql.Driver").newInstance();
            band = true;
        } catch (ClassNotFoundException | InstantiationException | IllegalAccessException ex) {
            band = false;
            System.out.println("Fallo driver: " + ex);
        } 
        // Ejecuta consulta
        String consulta = "";
        Connection conn = null;
        try {
            conn = DriverManager.getConnection("jdbc:postgresql://localhost/servhospital", "postgres", "holamundo");
        } catch (SQLException se) {
            consulta += "\nMensaje: " + se.getMessage();
            consulta += "\nEstado: " + se.getSQLState();
            consulta += "\nError: " + se.getErrorCode();
            System.out.println("Fallo: " + consulta);
        }
        // Ejecuta consulta
        try {
            Statement stat = conn.createStatement();
            ResultSet rs = stat.executeQuery("SELECT * FROM paciente ORDER BY noexp;");
            
            while (rs.next()) {
                com.itorizaba.servhosp.Paciente p = new com.itorizaba.servhosp.Paciente();
                
                p.setNoExp(rs.getString("noexp"));
                p.setNombre(rs.getString("nombre"));
                p.setApellidos(rs.getString("apellidos"));
                p.setDireccion(rs.getString("direccion"));
                p.setTelefono(rs.getString("telefono"));
                p.setCiudad(rs.getString("ciudad"));
            
                arr.getItem().add(p);
            }
            conn.close();
        } catch (SQLException se) {
            consulta += "LMensaje: " + se.getMessage();
            consulta += "LEstado: " + se.getSQLState();
            consulta += "LError: " + se.getErrorCode();
        }
        return arr;
    }
    
}
