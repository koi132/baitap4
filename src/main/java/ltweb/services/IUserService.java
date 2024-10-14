package ltweb.services;

import ltweb.Models.UserModel;

public interface IUserService {
	UserModel login(String username, String password);

	UserModel FindByUserName(String username);

	void insert(UserModel user);
	
	void update(String name, String pass);

	boolean register(String email, String username, String fullname, String password, String phone);

	boolean checkExistEmail(String email);

	boolean checkExistUsername(String username);

	boolean checkExistPhone(String phone);
}
