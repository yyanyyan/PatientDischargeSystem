package patientdischargesystem;

import view.Login;

import javafx.application.Application;
import javafx.fxml.FXMLLoader;
import javafx.scene.Parent;
import javafx.scene.Scene;
import javafx.scene.image.Image;
import javafx.stage.Stage;

public class PatientDischargeSystem extends Application{

	@Override
	public void start(Stage stage) throws Exception {
		Parent root = FXMLLoader.load(Login.class.getResource("Login.fxml"));
		Scene scene = new Scene(root);
		stage.setScene(scene);
		stage.setTitle("PatientDischargeSystem");
		Image icon=new Image("file:r1.png");
		stage.getIcons().add(icon);
		stage.show();
	}
	public static void main(String[] args) {
		launch(args);
	}
}
