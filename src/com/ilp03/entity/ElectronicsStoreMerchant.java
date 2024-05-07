package com.ilp03.entity;

public class ElectronicsStoreMerchant extends Merchant {
    public ElectronicsStoreMerchant(String electronicName) {
        super(electronicName);
    }
    // Method Overloading: Different number of parameters
    public void processOrder(int itemCount, double itemPrice) {
        double orderPrice = itemCount * itemPrice;
        super.processOrder(orderPrice);

    }
    @Override
    public void displayRevenue() {
    	
        System.out.println("Electronics revenue for " + getProductName() + ": $" + getRevenue());
    }
}