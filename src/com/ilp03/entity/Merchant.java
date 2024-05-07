package com.ilp03.entity;
public abstract class Merchant {
    private String productName;
    private double revenue;
    private int orderCount;
    private double orderPrice;

    public int getOrderCount() {
		return orderCount;
	}
	public void setOrderCount(int orderCount) {
		this.orderCount = orderCount;
	}
	public double getOrderPrice() {
		return orderPrice;
	}
	public void setOrderPrice(double orderPrice) {
		this.orderPrice = orderPrice;
	}
	public Merchant(String productName) {
        this.setProductName(productName);
        this.setRevenue(0.0);
    }
    public void processOrder(double amount) {
    	this.setRevenue(this.getRevenue() + amount);
        System.out.println("Order processed by " + getProductName());
    }
    //Abstract
    public abstract void displayRevenue();
 
	public String getProductName() {
		return productName;
	}
	public void setProductName(String productName) {
		this.productName = productName;
	}
	public double getRevenue() {
		return revenue;
	}
	public void setRevenue(double revenue) {
		this.revenue = revenue;
	}
}