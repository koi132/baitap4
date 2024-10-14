package ltweb.DAO;

import java.util.List;

import ltweb.Models.UserModel;

public interface IUserDao {
	List<UserModel> findAll();

	UserModel findById(int id);

	void insert(UserModel user);
	
//	void update(UserModel user);

	UserModel findByUserName(String username);

	boolean checkExistEmail(String email);

	boolean checkExistUsername(String username);

	boolean checkExistPhone(String phone);

	void update(String name, String pass);
}
