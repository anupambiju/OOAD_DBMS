package com.ilp03.utility;

import java.util.ArrayList;
import java.util.Scanner;

import com.ilp03.entity.Merchant;
import com.ilp03.service.MerchantService;


public class MerchantUtility {
    public static void main(String[] args) {
    	Scanner scanner= new Scanner(System.in);
    	//ArrayList Implementation
    	ArrayList<Merchant> merchantList=new ArrayList<Merchant>();
    	char goToMainMenu='y';
    	do {
			System.out.println("1.Book Merchant, 2.Electronic Merchant, 3.Display Revenue");
			int choice=scanner.nextInt();
			scanner.nextLine();

			switch(choice)
			{
			case 1: MerchantService.inputBook(merchantList);
					break;
			case 2: MerchantService.inputElectronics(merchantList);
					break;
			case 3: MerchantService.displayAllRevenue(merchantList);
		
			}
			System.out.println("Go back to main: y/n");
			goToMainMenu=scanner.next().charAt(0);

    	}while(goToMainMenu=='y');
    	
    }
}