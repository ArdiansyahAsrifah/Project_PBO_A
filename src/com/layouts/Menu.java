package src.com.layouts;

import java.util.Scanner;

public class Menu {
    public static void showMenu() {

        try (Scanner input = new Scanner(System.in)) {
            int pilihan;

            do {
                System.out.println("\n-------------------");
                System.out.println("WELCOME TO ...");
                System.out.println("-------------------");
                System.out.println("1.] Read Data");
                System.out.println("2.] Insert data");
                System.out.println("3.] Edit Data");
                System.out.println("4.] Delete data");
                System.out.println("-------------------");
                System.out.print("Pilih : ");
                pilihan = input.nextInt();

                switch (pilihan) {
                    case 1:
                        ReadData.readData();
                        break;
                    case 2:
                        InsertData.insertData();
                        break;
                    case 3:
                        EditData.EditData();
                        break;
                    case 4:
                        DeleteData.DeleteData();
                        break;
                    default:
                        System.out.println("Pilihan tidak tersedia");
                        break;
                }
            } while (pilihan != 0);
        }
    }
}

