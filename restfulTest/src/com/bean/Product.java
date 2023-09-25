package com.bean;

public class Product {
    private String product;
    private int amount;
    private int price = 0;

    public String getProduct() {
        return product;
    }

    public void setProduct(String product) {
        this.product = product;
    }

    public int getAmount() {
        return amount;
    }

    public void setAmount(int amount) {
        this.amount = amount;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public String print(){
        return "product : " + product + "\n amount : " + amount + "\n price : " + price + "<br>";
    }
}
