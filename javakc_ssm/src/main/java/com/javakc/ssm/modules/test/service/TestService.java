package com.javakc.ssm.modules.test.service;

import com.javakc.ssm.base.page.Page;
import com.javakc.ssm.base.service.BaseService;
import com.javakc.ssm.modules.test.dao.TestDao;
import com.javakc.ssm.modules.test.entity.TestEntity;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class TestService extends BaseService<TestDao, TestEntity> {

    @Autowired
    private TestDao testDao;

    /**
     * 根据条件分页查询-测试管理数据
     * @param entity
     * @param page 包含页码传到后台的所有的参数，当前页，当前需要展示的条数
     * @return
     */
    public Page<TestEntity> queryTest(TestEntity entity,Page<TestEntity> page){
        //##设置页码参数信息,entity包含所有的查询条件的数据，还有分页信息的数据
        entity.setPage(page);
        //##调用dao层方法，进行数据库查询
        page.setList(testDao.findList(entity));
        System.out.println(page.getCount()+"++++++++++++++++++++++=");
        return page;
    }
}
