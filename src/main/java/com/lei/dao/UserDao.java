/*
 * Copyright (C) 2018 Baidu, Inc. All Rights Reserved.
 */
package com.lei.dao;


import com.lei.model.UserDomain;

import java.util.List;

public interface UserDao {


    int insert(UserDomain record);



    List<UserDomain> selectUsers();
}