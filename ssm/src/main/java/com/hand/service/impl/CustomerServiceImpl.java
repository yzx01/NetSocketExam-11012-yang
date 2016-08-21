package com.hand.service.impl;

import com.hand.bean.Customer;
import com.hand.bean.StartAndEnd;
import com.hand.dao.CustomerDAO;
import com.hand.service.CustomerService;
import org.springframework.stereotype.Component;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by zhongxing on 2016/8/20.
 */
@Component
public class CustomerServiceImpl implements CustomerService{

    private CustomerDAO customerDAO;

    public CustomerDAO getCustomerDAO() {
        return customerDAO;
    }

    @Resource(name="customerDAOImpl")
    public void setCustomerDAO(CustomerDAO customerDAO) {
        this.customerDAO = customerDAO;
    }

    public List<Customer> selectAllCustomer() {
        return customerDAO.getAllCustomer();
    }

    public List<Customer> selectCustomerByPage(StartAndEnd startAndEnd) {
        return customerDAO.getCustomerByPage(startAndEnd);
    }

    public Integer getCustomerPage() {
        return customerDAO.getAllPage();
    }

    public Integer delete(int id) {
        return customerDAO.deleteCustomer(id);
    }

    public Integer insert(Customer customer) {
        return customerDAO.addCustomer(customer);
    }

    public Customer getAcustomer(int id) {
        return customerDAO.getACustomer(id);
    }

    public Integer update(Customer customer) {
        return customerDAO.updateCustomer(customer);
    }

    public Integer login(String name) {
        return customerDAO.login(name);
    }
}
