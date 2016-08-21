package com.hand.bean;

import java.sql.Timestamp;
import java.util.Date;

/**
 * Created by zhongxing on 2016/8/20.
 */
public class Customer {
    private Integer customer_id;
    private Integer store_id;
    private String first_name;
    private String last_name;
    private String email;
    private Integer address_id;
    private Integer active;
    private Date create_date;
    private Timestamp last_update;

    public Customer() {
    }

    public Customer(Integer customer_id, Integer store_id, String first_name, String last_name, String email, Integer address_id, Integer active, Date create_date, Timestamp last_update) {
        this.customer_id = customer_id;
        this.store_id = store_id;
        this.first_name = first_name;
        this.last_name = last_name;
        this.email = email;
        this.address_id = address_id;
        this.active = active;
        this.create_date = create_date;
        this.last_update = last_update;
    }

    public Customer(String first_name, String last_name, String email, Integer address_id) {
        this.first_name = first_name;
        this.last_name = last_name;
        this.email = email;
        this.address_id = address_id;
    }


    public Customer(Integer store_id, String first_name, String last_name, String email, Integer address_id, Date create_date) {
        this.store_id = store_id;
        this.first_name = first_name;
        this.last_name = last_name;
        this.email = email;
        this.address_id = address_id;
        this.create_date = create_date;
    }

    public Integer getActive() {
        return active;
    }

    public void setActive(Integer active) {
        this.active = active;
    }

    public Integer getAddress_id() {
        return address_id;
    }

    public void setAddress_id(Integer address_id) {
        this.address_id = address_id;
    }

    public Date getCreate_date() {
        return create_date;
    }

    public void setCreate_date(Date create_date) {
        this.create_date = create_date;
    }

    public Integer getCustomer_id() {
        return customer_id;
    }

    public void setCustomer_id(Integer customer_id) {
        this.customer_id = customer_id;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getFirst_name() {
        return first_name;
    }

    public void setFirst_name(String first_name) {
        this.first_name = first_name;
    }

    public String getLast_name() {
        return last_name;
    }

    public void setLast_name(String last_name) {
        this.last_name = last_name;
    }

    public Timestamp getLast_update() {
        return last_update;
    }

    public void setLast_update(Timestamp last_update) {
        this.last_update = last_update;
    }

    public Integer getStore_id() {
        return store_id;
    }

    public void setStore_id(Integer store_id) {
        this.store_id = store_id;
    }


    @Override
    public String toString() {
        return "Customer{" +
                "active=" + active +
                ", customer_id=" + customer_id +
                ", store_id=" + store_id +
                ", first_name='" + first_name + '\'' +
                ", last_name='" + last_name + '\'' +
                ", email='" + email + '\'' +
                ", address_id=" + address_id +
                ", create_date=" + create_date +
                ", last_update=" + last_update +
                '}';
    }
}
