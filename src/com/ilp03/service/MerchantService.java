package com.ilp03.service;

import java.util.ArrayList;
import java.util.Scanner;

import com.ilp03.entity.BookstoreMerchant;
import com.ilp03.entity.ElectronicsStoreMerchant;
import com.ilp03.entity.Merchant;

public class MerchantService {
	static Scanner scanner= new Scanner(System.in);

		public static void inputBook(ArrayList<Merchant> merchantList)
		{	    	

			System.out.println("Enter Book Name: ");
			String bookName=scanner.nextLine();
			System.out.println("Enter Units Sold: ");
			int bookCount=scanner.nextInt();
			scanner.nextLine();
			BookstoreMerchant bookstore = new BookstoreMerchant(bookName);
			bookstore.processOrder(bookCount); 
			merchantList.add(bookstore);
		}
		public static void inputElectronics(ArrayList<Merchant> merchantList)
		{
			System.out.println("Enter Electronic Product Name: ");
			String electronicName=scanner.nextLine();
			System.out.println("Enter Units Sold: ");
			int orderCount=scanner.nextInt();
			System.out.println("Enter Product Price: ");
			Double orderPrice=scanner.nextDouble();
			scanner.nextLine();

			ElectronicsStoreMerchant electronicStore = new ElectronicsStoreMerchant(electronicName);
			electronicStore.processOrder(orderCount, orderPrice); 
			merchantList.add(electronicStore);
		}
		public static void displayRevenue(Merchant merchant)
		{		
				if(merchant instanceof BookstoreMerchant)
				{
					BookstoreMerchant bookstoreMerchant=(BookstoreMerchant)merchant;
					bookstoreMerchant.displayRevenue();
					
				}
				else if(merchant instanceof ElectronicsStoreMerchant)
				{
					ElectronicsStoreMerchant electronicsStoreMerchant=(ElectronicsStoreMerchant)merchant;
					electronicsStoreMerchant.displayRevenue();
				}
				
			
		}
		
		public static void displayAllRevenue(ArrayList<Merchant> merchantList)
		{	
			for(Merchant merchant : merchantList)
			{	

				if(merchant instanceof BookstoreMerchant)
				{
					BookstoreMerchant bookstoreMerchant=(BookstoreMerchant)merchant;
					displayRevenue(bookstoreMerchant);
					
				}
				else if(merchant instanceof ElectronicsStoreMerchant)
				{
					ElectronicsStoreMerchant electronicsStoreMerchant=(ElectronicsStoreMerchant)merchant;
					displayRevenue(electronicsStoreMerchant);

				}
				
			}
		}


}
