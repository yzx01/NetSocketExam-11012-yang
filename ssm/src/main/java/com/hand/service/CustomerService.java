package com.hand.service;

import com.hand.bean.Customer;
import com.hand.bean.StartAndEnd;
import org.springframework.stereotype.Component;

import java.util.List;

/**
 * Created by zhongxing on 2016/8/20.
 */

public interface CustomerService {

    public List<Customer> selectAllCustomer();

    public List<Customer> selectCustomerByPage(StartAndEnd startAndEnd);

    public Integer getCustomerPage();

    public Integer delete(int id);

    public Integer insert(Customer customer);

    public Customer getAcustomer(int id);

    public Integer update(Customer customer);

    public Integer login(String name);

}
