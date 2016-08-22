package com.hand.controller;

import com.hand.bean.Customer;
import com.hand.bean.StartAndEnd;
import com.hand.service.CustomerService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by zhongxing on 2016/8/20.
 */
@Controller
public class CustomerController {

    private CustomerService customerService;

    public CustomerService getCustomerService() {
        return customerService;
    }

    @Resource(name="customerServiceImpl")
    public void setCustomerService(CustomerService customerService) {
        this.customerService = customerService;
    }

    @RequestMapping("/all")
    public String getAll(@RequestParam(value = "page",required = false,defaultValue = "1") String page, Map<String,Object> map){
        StartAndEnd startAndEnd = new StartAndEnd();
        startAndEnd.setStart((Integer.parseInt(page)-1)*10);
        startAndEnd.setEnd(10);
        List<Customer> customer=customerService.selectCustomerByPage(startAndEnd);
        Integer totalpage = customerService.getCustomerPage();
        map.put("customer",customer);
        map.put("totalpage",totalpage);
        map.put("page",page);
        return "customer_index";

    }

    @RequestMapping("/delete")
    public String delete(@RequestParam(value = "id") int id){
        customerService.delete(id);
        return "customer_index";
    }

    @RequestMapping("addaddress")
    public String insert(Customer customer){
        //Customer new_customer = new Customer(1,customer.getFirst_name(),customer.getLast_name(),customer.getEmail(),customer.getAddress_id(),new Date());
        customer.setStore_id(1);
        customer.setCreate_date(new Date());
        System.out.println(customer);
        customerService.insert(customer);
        return "redirect:main/customer_index.jsp";
    }

    @RequestMapping("/getACustomer")
    public String getACustomer(@RequestParam(value = "id") int id,Map<String,Object> map){
        Customer customer = customerService.getAcustomer(id);
        map.put("ACustomer",customer);
        return "editcustomer";
    }

    @RequestMapping("/editcustomer")
    public String updateCustomer(Customer customer){
        customerService.update(customer);
        return "redirect:/main/customer_index.jsp";
    }

    @RequestMapping("/login")
    @ResponseBody
    public Map<String,Object> login(HttpSession session,String firstName,String password){
        Map<String,Object> map = new HashMap<String, Object>();
        Integer count = customerService.login(firstName);
        System.out.println(firstName);
        System.out.println(count);
        if(count!=0){
            map.put("code","3");
            map.put("href","main/index.jsp");
            session.setAttribute("firstname",firstName);
        }
        return map;
    }

    @RequestMapping("/loginout")
    public String loginout(HttpSession session){
        if(session.getAttribute("firstname")!=null){
            session.removeAttribute("firstname");
        }
        return "redirect:login.jsp";
    }
}
