package com.javakc.ssm.modules.test.entity;

import com.javakc.ssm.base.entity.BaseEntity;

import java.util.Date;

/**
 * 测试实体类
 */
public class TestEntity extends BaseEntity<TestEntity> {

    private String testId;
    private String testName;
    private String testSex;
    private Date testDate;

    public String getTestId() {
        return testId;
    }

    public void setTestId(String testId) {
        this.testId = testId;
    }

    public String getTestName() {
        return testName;
    }

    public void setTestName(String testName) {
        this.testName = testName;
    }

    public String getTestSex() {
        return testSex;
    }

    public void setTestSex(String testSex) {
        this.testSex = testSex;
    }

    public Date getTestDate() {
        return testDate;
    }

    public void setTestDate(Date testDate) {
        this.testDate = testDate;
    }
}
