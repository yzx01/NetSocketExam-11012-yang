package com.hand.controller;

import com.hand.bean.Address;
import com.hand.service.AddressService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import java.util.List;
import java.util.Map;

/**
 * Created by zhongxing on 2016/8/21.
 */
@Controller
public class AddressController {

    private AddressService addressService;

    public AddressService getAddressService() {
        return addressService;
    }

    @Resource(name = "addressServiceImpl")
    public void setAddressService(AddressService addressService) {
        this.addressService = addressService;
    }

    @RequestMapping("/alladdress")
    public String getAllAddress(Map<String,Object> map){
        List<Address> address = addressService.getAddress();
        map.put("address",address);
        return "addcustomer";
    }
}
