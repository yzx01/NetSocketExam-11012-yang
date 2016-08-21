package com.hand.test;

import com.hand.cfx.HelloWorld;
import org.apache.cxf.jaxws.JaxWsProxyFactoryBean;

/**
 * Created by zhongxing on 2016/8/20.
 */
public class Test {
    public static void main(String args[]) {

        JaxWsProxyFactoryBean factory = new JaxWsProxyFactoryBean();
        factory.setServiceClass(HelloWorld.class);
        factory.setAddress("http://localhost:8080/webservice/helloworld");
        HelloWorld hello = factory.create(HelloWorld.class);
        String s = hello.sayHello("yzx");
        System.out.println(s);

    }
}
