package com.hand.dao;

import com.hand.bean.Address;
import com.hand.bean.Customer;
import com.hand.bean.StartAndEnd;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;

/**
 * Created by zhongxing on 2016/8/20.
 */
public interface CustomerDAO {

    public List<Customer> getAllCustomer();

    public List<Customer> getCustomerByPage(StartAndEnd se);

    public Integer getAllPage();

    public Integer deleteCustomer(int id);

    public Integer addCustomer(Customer customer);

    public Customer getACustomer(int id);

    public Integer updateCustomer(Customer customer);

    public Integer login(String name);
}
