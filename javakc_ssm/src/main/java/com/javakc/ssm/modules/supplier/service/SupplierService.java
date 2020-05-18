package com.javakc.ssm.modules.supplier.service;

import com.javakc.ssm.base.page.Page;
import com.javakc.ssm.base.service.BaseService;
import com.javakc.ssm.modules.supplier.dao.SupplierDao;
import com.javakc.ssm.modules.supplier.entity.SupplierEntity;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * 基础资料-供应商管理逻辑层
 */
@Service
public class SupplierService extends BaseService<SupplierDao, SupplierEntity> {

    @Autowired
    private SupplierDao supplierDao;

    /**
     * 根据条件分页查询
     * @param page
     * @param entity
     * @return
     */
    public Page<SupplierEntity> querySupplier(Page<SupplierEntity> page,SupplierEntity entity){
        //##设置分页参数
        entity.setPage(page);
        //##进行分页查询
        page.setList(supplierDao.findList(entity));

        return page;
    }
}
