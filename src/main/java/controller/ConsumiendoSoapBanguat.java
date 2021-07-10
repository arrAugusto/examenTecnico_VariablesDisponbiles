/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import exament_variablesdisponibles.InfoVariable;

/**
 *
 * @author agr12
 */
public class ConsumiendoSoapBanguat {
    //CONSTRUCTOR DE LA CLASE
    public ConsumiendoSoapBanguat() {
    }
    //HACIENDO EL CONSUMO Y LLAMDO AL SERVICIO WEB
    public static InfoVariable variablesDisponiblesBanGuat(){
            exament_variablesdisponibles.TipoCambio service = new exament_variablesdisponibles.TipoCambio();
            exament_variablesdisponibles.TipoCambioSoap port = service.getTipoCambioSoap();
            exament_variablesdisponibles.InfoVariable result = port.variablesDisponibles();
            //RETORNANDO LA RESPUESTA DEL SERVICIO
            return result;

    }
}
