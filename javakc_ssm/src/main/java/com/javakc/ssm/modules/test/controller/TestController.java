package com.javakc.ssm.modules.test.controller;

import com.javakc.ssm.base.page.Page;
import com.javakc.ssm.base.util.CommonUtil;
import com.javakc.ssm.modules.test.entity.TestEntity;
import com.javakc.ssm.modules.test.service.TestService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * 测试管理-表现层
 */
@Controller
@RequestMapping("test")
public class TestController {

    /**
     * 根据条件进行分页查询-测试管理数据
     * @param entity
     * @param request
     * @param response
     * @return
     */

    @Autowired
    private TestService testService;

    @RequestMapping("queryTest")
    public ModelAndView queryTest(TestEntity entity, HttpServletRequest request, HttpServletResponse response){

        System.out.println("============================");

        //##  调用service逻辑层进行查询
        Page<TestEntity> page = testService.queryTest(entity, new Page<>(request,response));
        //## 把page传到前台页面中
        ModelAndView modelAndView = new ModelAndView("test/list");
        modelAndView.addObject("page",page);
        return  modelAndView;
    }

    @RequestMapping("create")
    public String create(TestEntity entity){
        //##UUID
        entity.setTestId(CommonUtil.uuid());
        System.out.println(entity.getTestName()+"++++++++++++++++++++++++=");
        testService.save(entity);
        return "redirect:queryTest.do";
    }

}
