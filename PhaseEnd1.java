package com.CameraRental;
import java.util.Scanner;
import java.util.ArrayList;


class Camera {

	private int camera_id;
	private String brand;
	private String model;
	private double price;
	private boolean status;

	Camera(int camera_id, String brand, String model, double price, boolean Available) {
		this.camera_id = camera_id;
		this.brand = brand;
		this.model = model;
		this.price = price;
		this.status = Available;
	}

	public int getId() {
		return camera_id;
	}

	public String getBrand() {
		return brand;
	}

	public String getModel() {
		return model;
	}

	public double getPrice() {
		return price;
	}

	public boolean isAvailable() {
		return status;
	}

	public void setAvailable(boolean Available) {
		this.status = Available;
	}
}
public class PhaseEnd1 {

	public static void main(String[] args) {
		String username, password;
		 System.out.println("\n---------------------------------------------------\n");
	        System.out.println("\tWELCOME TO CAMERA RENTAL APPLICATION \n");
	        System.out.println("---------------------------------------------------");
	        System.out.println("\n PLEASE LOGIN TO CONTINUE -");
	        Scanner s = new Scanner(System.in);
	        System.out.println("\nUSERNAME -");       
	        username = s.nextLine();
	        System.out.println("PASSWORD");
	        password = s.nextLine();
	        if (username.equals("admin") && password.equals("admin123")) {
	        optionsSelection();
	        }
	        else {
				System.out.println("Authentication Failed");
			}
	        
	        
	        }
	 private static void optionsSelection() {
		    double INR = 1000;
		  ArrayList<Camera> list = new ArrayList<>();
			list.add(new Camera(1, "Samsung", "Ds123", 1000, true));
			list.add(new Camera(2, "Nikon", "Dy23", 500, false));
			list.add(new Camera(3, "Canon", "5050", 1250, true));
			list.add(new Camera(4, "Chroma", "CT", 300, true));
			list.add(new Camera(5, "Nikon", "SRL", 350, true));
			list.add(new Camera(6, "Fujitsu", "2730", 860, false));
			list.add(new Camera(7, "Samsung", "SL", 550, true));
			list.add(new Camera(8, "LG", "Digital", 220, true));
			list.add(new Camera(9, "Lenova", "XLR", 275, true));
			list.add(new Camera(10, "Sony", "Digital", 550, false));
	        
			int x = 0;
			do {
				int options;
				Scanner sc = new Scanner(System.in);
				// public void main_option()
				System.out.println("\n1.MY CAMERA");
				System.out.println("2.RENT A CAMERA");
				System.out.println("3.VIEW ALL CAMERA");
				System.out.println("4.MY WALLET");
				System.out.println("5.EXIT");
				System.out.println("Select your option : ");
				options = sc.nextInt();
             switch (options) {
             case 1:
					int k = 0;
					do {
						int choose;
						System.out.println("1.ADD");
						System.out.println("2.REMOVE");
						System.out.println("3.VIEW MY CAMERA");
						System.out.println("4.GO TO PREVIOUS MENU");
						System.out.println("Enter your choise : ");
						choose = sc.nextInt();

						switch (choose) {
	                case 1:
						System.out.println("ENTER CAMERA ID: ");
						int camera_id = sc.nextInt();
						System.out.println("ENTER CAMERA BRAND: ");
						String brand = sc.next();
						System.out.println("ENTER THE MODEL: ");
						String model = sc.next();
						System.out.println("ENTER PRICE PER DAY (INR): ");
						double price = sc.nextFloat();
						boolean Available = true;
						list.add(new Camera(camera_id, brand, model, price, Available));
						System.out.println("YOUR CAMERA HAS BEEN SUCCESSFULLY ADDED TO THE LIST");
						System.out.println("You want view camera List please enter '1' else enter '0': ");
						int m = sc.nextInt();
						if (m == 1) {
							 System.out.println("\n=====================================================\n");
							System.out.println("CAMERA ID\t BRAND\t MODEL\t PRICE\t STATUS");
							 System.out.println("\n=====================================================");
							for (int i = 0; i < list.size(); i++) {
								Camera data = list.get(i);
								String status = data.isAvailable() ? "Available" : "Rented";
								System.out.println(data.getId() + "\t\t" + data.getBrand() + "\t" + data.getModel()
										+ "\t" + data.getPrice() + "\t" + status);
								}
							System.out.println("=====================================================\n");

						}
						break;
	                case 2:
						System.out.println("ENTER THE CAMERA ID TO REMOVE: ");
						int cameraId = sc.nextInt();
						for (int i = 0; i < list.size(); i++) {
							Camera camera = list.get(i);
							if (camera.getId() == cameraId) {
								list.remove(i);
								System.out.println("CAMERA SUCCESSFULLY REMOVED FROM THE LIST");
								break;
							}
						}
						break;
	                case 3:
	                	 System.out.println("\n=====================================================\n");
						System.out.println("CAMERA ID\t BRAND\t MODEL\t PRICE\t STATUS");
						 System.out.println("\n=====================================================");
						for (int i = 0; i < list.size(); i++) {
							Camera data = list.get(i);
							String status = data.isAvailable() ? "Available" : "Rented";
							System.out.println(data.getId() + "\t\t" + data.getBrand() + "\t" + data.getModel()
									+ "\t" + data.getPrice() + "\t" + status);
							}
						System.out.println("=====================================================\n");
	                case 4:
	                	
						break;
	                
	                }
             System.out.println("If u want add or remove camera please enter '1' else '0':");
				k = sc.nextInt();
             }while(k==1);
					break;
             case 2:
            	 System.out.println("\n=====================================================\n");
                   System.out.println("CAMERA ID\t BRAND\t MODEL\t PRICE\t STATUS");
                   System.out.println("\n=====================================================");
					for (Camera data : list) {
						if (data.isAvailable()) {
							String status = data.isAvailable() ? "Available" : "Rended";

							System.out.println(data.getId() + "\t\t" + data.getBrand() + "\t" + data.getModel() + "\t"
									+ data.getPrice() + "\t" + status);
							
						}
					}
					System.out.println("=====================================================\n");
					int index = -1;
					System.out.println("ENTER THE CAMERA ID YOU WANT TO RENT : ");
					int cameraId = sc.nextInt();
					for (int i = 0; i < list.size(); i++) {
						Camera camera = list.get(i);
						if (camera.getId() == cameraId) {
							index = i;
							break; // Found the camera, exit the loop
						}
					}
					if (index != -1) {
						Camera a = list.get(index);
						if (a.getPrice() <= INR) {
							System.out.println("YOUR TRANSACTION FOR CAMERA\t" +a.getBrand()+"\t" +a.getModel()+  "\tWITH RENT INR.\t" +a.getPrice()+ "\t IS SUCCESSFULLY COMPLETED");
							a.setAvailable(false);
							INR = INR - a.getPrice();
							System.out.println("CURRENT WALLET BALANCE - " + INR);
						} else {
							System.out.println("ERROR : TRANSACTION FAILED DUE TO INSUFFICIENT WALLET BALANCE . PLEASE DEPOSIT AMOUNT TO YOUR WALLET.");
						}
					} else {
						System.out.println("Camera with ID " + cameraId + " is not found in the list.");
					}

					break;
             case 3:
            	 System.out.println("\n=====================================================\n");
					System.out.println("CAMERA ID\t BRAND\t MODEL\t PRICE\t STATUS");
					 System.out.println("\n=====================================================");
					for (int i = 0; i < list.size(); i++) {
						Camera data = list.get(i);
						String status = data.isAvailable() ? "Available": "Rented";
						System.out.println(data.getId() + "\t\t" + data.getBrand() + "\t" + data.getModel() + "\t"
								+ data.getPrice() + "\t" + status);
					}
					System.out.println("=====================================================\n");
					break;
             case 4:
					System.out.println("YOUR CURRENT WALLET BALANCE IS - INR." + INR);
					System.out.println("DO YOU WANT TO DEPOSIT MORE AMOUNT TO YOUR WALLET?(1.YES 2.NO)- ");
					int m = sc.nextInt();
					if (m == 1) {
						System.out.println("ENTER THE AMOUNT (INR) - ");
						double addAmount = sc.nextDouble();
						INR = INR + addAmount;
						System.out.print("YOUR WALLET BALANCE UPDATED SUCCESFULLY.");
					}
					System.out.println("CURRENT WALLET BALANCE - " + INR);
					break;
             case 5 :
            	 break;
					}
             System.out.println("If u want continue (1.Yes 2.No)- ");
				x = sc.nextInt();
			}while(x==1);
			System.out.println("THANK U FOR VISITING....");
			
	 }
	 


  }


    
    