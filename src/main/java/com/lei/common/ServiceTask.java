/*
 * Copyright (C) 2018 Baidu, Inc. All Rights Reserved.
 */
package com.lei.common;

import java.util.concurrent.Callable;
import java.util.function.Function;

import org.apache.commons.lang3.time.StopWatch;
import org.slf4j.Logger;

/**
 * 线程任务
 *
 * @author leichengbiao
 */
public class ServiceTask<T, R> implements Callable<ServiceTaskResult> {

    private Logger logger;
    private String taskName;
    private T param;
    private Function<T, R> function;

    /**
     * 分表执行操作 tableIndex必传
     */
    public ServiceTask(Logger logger, Function function, String taskName, T param) {
        this.logger = logger;
        this.function = function;
        this.taskName = taskName;
        this.param = param;
    }

    @Override
    public ServiceTaskResult call() throws Exception {
        final StopWatch stopWatch = new StopWatch();
        stopWatch.start();
        ServiceTaskResult result = new ServiceTaskResult();

        // 执行业务
        R resultOfFunction = handleBiz();

        result.setParam(param);
        result.setResult(resultOfFunction);
        result.setTaskName(taskName);
        stopWatch.stop();
        result.setTimeConsumedMsec(stopWatch.getTime());
        return result;
    }

    /**
     * 执行任务
     */
    private R handleBiz() {
        R result = null;
        try {
            result = function.apply(param);
        } catch (Exception e) {
            logger.error(e.getMessage(), e);
        } finally {
            return result;
        }
    }
}
