package com.hand.cfx;

import javax.jws.WebMethod;
import javax.jws.WebParam;
import javax.jws.WebService;

/**
 * Created by zhongxing on 2016/8/20.
 */
@WebService
public interface HelloWorld {

    @WebMethod
    public String sayHello(@WebParam(name="username")String username);
    public void setUser(String username);
}
