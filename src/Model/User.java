package Model;

public class User {
	 
    private String username;
    private String password;
 
    public User(String username, String password){
        this.username = username;
        this.password = password;
    }
   
    /**
     * Returns the AccessibleContext associated with this object.  In most
     * cases, the return value should not be null if the object implements
     * interface Accessible.  If a component developer creates a subclass
     * of an object that implements Accessible, and that subclass
     * is not Accessible, the developer should override the
     * getAccessibleContext method to return null.
     */
    public String getUsername() {
        return username;
    }
 
    public void setUsername(String username) {
        this.username = username;
    }
 
    public String getPassword() {
        return password;
    }
 
    public void setPassword(String password) {
        this.password = password;
    }
 
}