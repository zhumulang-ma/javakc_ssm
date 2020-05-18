package com.javakc.ssm.modules.supplier.entity;

import com.javakc.ssm.base.entity.BaseEntity;
import lombok.Data;

import java.util.Date;

@Data
public class SupplierEntity extends BaseEntity<SupplierEntity> {

    /** 供应商主键 */
    private String id ;
    /** 供应商编号 */
    private String supplierNumber ;
    /** 联系电话 */
    private String supplierPhone1 ;
    /** 供应商名称 */
    private String supplierName ;
    /** 开始合作时间 */
    private Date supplierStarttime ;
    /** 供应产品 */
    private Integer supplyProducts ;
    /** 其他联系电话 */
    private String supplierPhone2 ;
    /** 所在地区 */
    private String supplierRegion ;
    /** 详细地址 */
    private String supplierAddress ;
    /** 更新时间 */
    private Date updatedTime ;
    /** 备注 */
    private String supplierNote ;

}
