package com.hand.service.impl;

import com.hand.bean.Address;
import com.hand.dao.AddressDAO;
import com.hand.service.AddressService;
import org.springframework.stereotype.Component;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by zhongxing on 2016/8/21.
 */
@Component
public class AddressServiceImpl implements AddressService{

    private AddressDAO addressDAO;

    public AddressDAO getAddressService() {
        return addressDAO;
    }

    @Resource(name="addressDAOImpl")
    public void setAddressService(AddressDAO addressDAO) {
        this.addressDAO = addressDAO;
    }

    public List<Address> getAddress() {
        return addressDAO.getAllAddress();
    }
}
