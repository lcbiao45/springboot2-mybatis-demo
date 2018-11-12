/*
 * Copyright (C) 2018 Baidu, Inc. All Rights Reserved.
 */
package com.lei.common;

import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Supplier;

/**
 * 多线程执行任务入参实体类
 *
 * @param <T> 执行方法入参
 * @param <R> 执行方法返回
 *
 * @author leichengbiao
 */
public class ITask<T, R> {

    private String taskName;
    private Function<T, R> function;

    public String getTaskName() {
        return taskName;
    }

    public void setTaskName(String taskName) {
        this.taskName = taskName;
    }

    public Function<T, R> getFunction() {
        return function;
    }

    public void setFunction(Function<T, R> function) {
        this.function = function;
    }

    /**
     * 通过Consumer构建ITask
     */
    public static ITask buildITask(String taskName, Consumer consumer) {
        ITask iTask = new ITask();
        iTask.setTaskName(taskName);
        iTask.setFunction(p -> {
            consumer.accept(p);
            return null;
        });
        return iTask;
    }

    /**
     * 通过Consumer构建ITask
     */
    public static ITask buildITask(String taskName, Supplier supplier) {
        ITask iTask = new ITask();
        iTask.setTaskName(taskName);
        iTask.setFunction(p -> supplier.get());
        return iTask;
    }

}
