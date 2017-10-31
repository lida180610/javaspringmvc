package com.bjbc.service;

import com.bjbjc.entity.User;

public interface UserService {
	public User login(User u);
	public boolean register(User u);
	public boolean update(User u);

}
