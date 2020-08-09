import java.rmi.registry.LocateRegistry;
import java.rmi.registry.Registry;

public class Client {
    private static String host = null; // Default localhost
    private Client() {}
    public static void main(String[] args) {
        try {
            Registry registry = LocateRegistry.getRegistry(host);
            Hello stub = (Hello) registry.lookup("Hello");
            System.out.println("Sending RMI Request");
            stub.printMsg();
            System.out.println("RMI Request Complete");
        } catch (Exception e) {
            System.out.println("Client exception: " + e.toString());
            e.printStackTrace();
        }
    }
}
