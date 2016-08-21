package com.hand.cfx.impl;

import com.hand.cfx.HelloWorld;

import javax.jws.WebService;

/**
 * Created by zhongxing on 2016/8/20.
 */
@WebService
public class HelloWorldImpl implements HelloWorld {

    public String sayHello(String username) {
        return "Hello "+username;
    }

    public void setUser(String username) {

    }
}
