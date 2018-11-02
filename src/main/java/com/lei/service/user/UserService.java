/*
 * Copyright (C) 2018 Baidu, Inc. All Rights Reserved.
 */
package com.lei.service.user;

import com.github.pagehelper.PageInfo;
import com.lei.model.TUser;

/**
 * Created by Administrator on 2018/4/19.
 */
public interface UserService {

    int addUser(TUser user);

    PageInfo<TUser> findAllUser(int pageNum, int pageSize);
}
