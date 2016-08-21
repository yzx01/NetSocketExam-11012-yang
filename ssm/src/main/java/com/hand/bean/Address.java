package com.hand.bean;

/**
 * Created by zhongxing on 2016/8/21.
 */
public class Address {

    private Integer address_id;
    private String address;

    public Address() {
    }

    public Address(Integer address_id, String address) {
        this.address_id = address_id;
        this.address = address;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public Integer getAddress_id() {
        return address_id;
    }

    public void setAddress_id(Integer address_id) {
        this.address_id = address_id;
    }
}
