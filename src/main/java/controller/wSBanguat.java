package controller;
//IMPORTANDO TODOS LOS PAQUETES
import exament_variablesdisponibles.InfoVariable;
import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import models.conexionMysql;

/**
 *
 * @author agr12
 */
public class wSBanguat {
    //INSTANCIANDO EL CONSUMO DEL SOAP
    ConsumiendoSoapBanguat consumiendoSoapBanguat = new ConsumiendoSoapBanguat();

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) throws ClassNotFoundException {
        //SOLICTANDO AL METODO variablesDisponiblesBanGuat
        InfoVariable result = controller.ConsumiendoSoapBanguat.variablesDisponiblesBanGuat();
        //INSTANCIANDO OBJETO CAT MONEDA
        ObjetoCatMoneda objetoCatMoneda = new ObjetoCatMoneda();
        //INSTANCIANDO LA CONEXION ALA DB
        conexionMysql conectar = new conexionMysql();
        //HACIENDO LA CONEXION
        Connection reg = conectar.getConnection();
        //UTILIZANDO UN CATCH PARA ERRORES NO ESPERADOS
        try {
            //HACIENDO ITERACION DE LOS DATOS OBTENIDOS DEL WS
            for (int i = 0; i < result.getVariables().getVariable().size(); i++) {
                objetoCatMoneda.setModena(result.getVariables().getVariable().get(i).getMoneda());
                objetoCatMoneda.setDescripcion(result.getVariables().getVariable().get(i).getDescripcion());
                if (objetoCatMoneda.getModena() % 2 == 0) {
                    // SE UTILIZA UN SP QUE CONTIENE EL INSERT ALA DB
                    String query = "CALL `tecnicouni_variablesdisponibles`.`spNew_Variable_Disponible` (" + objetoCatMoneda.getModena() + ", '" + objetoCatMoneda.getDescripcion() + "')";
                    Statement statement = reg.createStatement();
                    statement.executeUpdate(query);
                }
            }
            System.out.println("Todos los registros fueron agregados correctamente!!!!");
            //DESCONECTANDO LA SESION DE BASE DE DATOS
            conectar.desconectar();

        } catch (SQLException ex) {
            //ERROR NO ESPERADO
            System.out.println("Error no esperado "+ex);
            Logger.getLogger(wSBanguat.class.getName()).log(Level.SEVERE, null, ex);
        }

    }

}
