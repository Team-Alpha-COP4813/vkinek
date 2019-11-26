/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package data;


public class LoginInfo {
    
    protected String user;
    protected String pass;
    protected String first;
    protected String last;
    protected String email;
    
    
    public LoginInfo() {
    }
    
     public String getUser() {
        return user;
    }
    
    public void setUser(String user) {
        this.user = user;
    }
    
    
    public String getPass() {
        return pass;
    }
    
    public void setPass(String pass) {
        this.pass = pass;
    }
    
    public String getFirst() {
        return first;
    }
    
    public void setFirst(String first) {
        this.first = first;
    }
    
    
    public String getLast() {
        return last;
    }
    
    public void setLast(String last) {
        this.last = last;
    }

     public String getEmail() {
        return last;
    }
    
    public void setEmail(String email) {
        this.email = email;
    }
}
