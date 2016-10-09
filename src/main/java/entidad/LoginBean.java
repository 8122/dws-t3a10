/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entidad;

/**
 *
 * @author Ramon
 */
public class LoginBean {
    private String usuario;
    private String contrasena;
    private String recordar;
    private String usuarioCorrecto = "Ramon";
    private String contrasenaCorrecta = "52703756S";

    /**
     * @return the usuario
     */
    public String getUsuario() {
        return usuario;
    }

    /**
     * @param usuario the usuario to set
     */
    public void setUsuario(String usuario) {
        this.usuario = usuario;
    }

    /**
     * @return the contrasena
     */
    public String getContrasena() {
        return contrasena;
    }

    /**
     * @param contrasena the contrasena to set
     */
    public void setContrasena(String contrasena) {
        this.contrasena = contrasena;
    }

    /**
     * @return the recordar
     */
    public String getRecordar() {
        return recordar;
    }

    /**
     * @param recordar the recordar to set
     */
    public void setRecordar(String recordar) {
        this.recordar = recordar;
    }

    /**
     * @param usuarioCorrecto the usuarioCorrecto to set
     */
    public void setUsuarioCorrecto(String usuarioCorrecto) {
        this.usuarioCorrecto = usuarioCorrecto;
    }

    /**
     * @param contrasenaCorrecta the contrasenaCorrecta to set
     */
    public void setContrasenaCorrecta(String contrasenaCorrecta) {
        this.contrasenaCorrecta = contrasenaCorrecta;
    }

    /**
     * @return the usuarioCorrecto
     */
    public String getUsuarioCorrecto() {
        return usuarioCorrecto;
    }

    /**
     * @return the contrasenaCorrecta
     */
    public String getContrasenaCorrecta() {
        return contrasenaCorrecta;
    }
    

}
