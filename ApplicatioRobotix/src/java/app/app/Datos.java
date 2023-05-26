/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package app.app;

import java.io.Serializable;

/**
 *
 * @author consj
 */
public class Datos implements Serializable{
    private int NumeroPC;
    private String Lab;
    private int Hora;
    private String Alumno;

    public Datos(){
    }

    public int getNumeroPC() {
        return NumeroPC;
    }

    public void setNumeroPC(int NumeroPC) {
        this.NumeroPC = NumeroPC;
    }

    public String getLab() {
        return Lab;
    }

    public void setLab(String Lab) {
        this.Lab = Lab;
    }

    public int getHora() {
        return Hora;
    }

    public void setHora(int Hora) {
        this.Hora = Hora;
    }

    public String getAlumno() {
        return Alumno;
    }

    public void setAlumno(String Alumno) {
        this.Alumno = Alumno;
    }
    
    
}
    

