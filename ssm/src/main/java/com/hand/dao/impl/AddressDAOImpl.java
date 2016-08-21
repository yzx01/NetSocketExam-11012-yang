package com.hand.dao.impl;

import com.hand.bean.Address;
import com.hand.dao.AddressDAO;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Component;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by zhongxing on 2016/8/21.
 */
@Component
public class AddressDAOImpl implements AddressDAO{

    private SqlSessionTemplate sqlSessionTemplate;

    public SqlSessionTemplate getSqlSessionTemplate() {
        return sqlSessionTemplate;
    }

    @Resource(name="sqlSessionTemplate")
    public void setSqlSessionTemplate(SqlSessionTemplate sqlSessionTemplate) {
        this.sqlSessionTemplate = sqlSessionTemplate;
    }

    public List<Address> getAllAddress() {
        return sqlSessionTemplate.selectList("address.getAll");
    }



}
