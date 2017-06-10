package Model;

public class Authenticator {
	 
    public String authenticate(String username, String password) {
        if (("user".equalsIgnoreCase(username))
                && ("password".equals(password))) {
            return "success";
        } else {
            return "error";
        }
    }
}