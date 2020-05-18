package com.javakc.ssm.modules.supplier.controller;

import com.javakc.ssm.base.page.Page;
import com.javakc.ssm.base.util.CommonUtil;
import com.javakc.ssm.modules.supplier.entity.SupplierEntity;
import com.javakc.ssm.modules.supplier.service.SupplierService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.beans.Transient;

/**
 * 基础资料-供应商管理表现层
 */
@Controller
@RequestMapping("supplier")
public class SupplierController {

    @Autowired
    private SupplierService supplierService;

    /**
     * 根据条件分页查询
     * @param entity
     * @param modelMap
     * @param request
     * @param response
     * @return
     * @throws Exception
     */
    @RequestMapping("querySupplier")
    public String querySupplier(SupplierEntity entity, ModelMap modelMap,
                                HttpServletRequest request, HttpServletResponse response) throws Exception{

        modelMap.put("page",supplierService.querySupplier(new Page<SupplierEntity>(request,response),entity));

        return "supplier/list";
    }

    /**
     * 新增供应商
     * @param entity
     * @return
     */
    @RequestMapping("create")
    @Transactional(readOnly = false)
    public String create(SupplierEntity entity){

        entity.setId(CommonUtil.uuid());
        supplierService.save(entity);

        return "redirect:querySupplier.do";
    }
}
