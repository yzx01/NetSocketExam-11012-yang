package com.hand.dao.impl;

import com.hand.bean.Address;
import com.hand.bean.Customer;
import com.hand.bean.StartAndEnd;
import com.hand.dao.CustomerDAO;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Component;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by zhongxing on 2016/8/20.
 */
@Component
public class CustomerDAOImpl implements CustomerDAO{


    private SqlSessionTemplate sqlSessionTemplate;

    public SqlSessionTemplate getSqlSessionTemplate() {
        return sqlSessionTemplate;
    }

    @Resource(name="sqlSessionTemplate")
    public void setSqlSessionTemplate(SqlSessionTemplate sqlSessionTemplate) {
        this.sqlSessionTemplate = sqlSessionTemplate;
    }

    public List<Customer> getAllCustomer() {
        return sqlSessionTemplate.selectList("customer.getAll");
    }

    public List<Customer> getCustomerByPage(StartAndEnd startAndEnd) {
        return sqlSessionTemplate.selectList("customer.getbypage",startAndEnd);
    }

    public Integer getAllPage(){
        Integer count = sqlSessionTemplate.selectOne("customer.getcount");
        return count%10==0?count/10:count/10+1;
    }

    public Integer deleteCustomer(int id) {
        return sqlSessionTemplate.delete("customer.deletecustomer",id);


    }

    public Integer addCustomer(Customer customer) {
        return sqlSessionTemplate.insert("customer.addcustomer");
    }

    public Customer getACustomer(int id) {
        return sqlSessionTemplate.selectOne("customer.getAcustomer", id);
    }

    public Integer updateCustomer(Customer customer) {
        return sqlSessionTemplate.update("customer.updatecustomer",customer);
    }

    public Integer login(String name){
        return sqlSessionTemplate.selectOne("customer.login",name);
    }
}
