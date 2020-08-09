import java.rmi.RemoteException;

public class ImpleExample implements Hello {
    public void printMsg() throws RemoteException {
        System.out.println("This is an example RMI program");
    }
}
