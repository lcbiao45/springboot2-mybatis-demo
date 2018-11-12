/*
 * Copyright (C) 2018 Baidu, Inc. All Rights Reserved.
 */
package com.lei.common;

/**
 * 线程任务执行结果类
 *
 * @author leichengbiao
 */
public class ServiceTaskResult<T, R> {

    // 任务耗时
    private long timeConsumedMsec;

    // 任务名
    private String taskName;

    // function执行结果
    private R result;

    // 任务入参
    private T param;

    public long getTimeConsumedMsec() {
        return timeConsumedMsec;
    }

    public void setTimeConsumedMsec(long timeConsumedMsec) {
        this.timeConsumedMsec = timeConsumedMsec;
    }

    public String getTaskName() {
        return taskName;
    }

    public void setTaskName(String taskName) {
        this.taskName = taskName;
    }

    public R getResult() {
        return result;
    }

    public void setResult(R result) {
        this.result = result;
    }

    public T getParam() {
        return param;
    }

    public void setParam(T param) {
        this.param = param;
    }
}