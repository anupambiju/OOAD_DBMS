package com.ilp03.entity;

public class BookstoreMerchant extends Merchant implements BestSellerCheck{
    public BookstoreMerchant(String bookName) {
        super(bookName);
    }
    // Method Overloading: Different parameter types
    public void processOrder(int bookCount) {
        double orderPrice = bookCount * 10.0; 
        // Assume each book costs $10
        super.processOrder(orderPrice);
        bestSellerStatus(bookCount);

    }
	@Override
	public void displayRevenue() {
		// TODO Auto-generated method stub
        System.out.println("Books revenue for " + getProductName() + ": $" + getRevenue());

	}
	@Override
	//Interface
	public void bestSellerStatus(int itemCount) {
		if(itemCount>100)
	        System.out.println("Book is a BestSeller");

	}
}
