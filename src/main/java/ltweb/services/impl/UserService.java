package ltweb.services.impl;

import ltweb.Models.UserModel;
import ltweb.services.IUserService;
import ltweb.DAO.*;

public class UserService implements IUserService {
	// Lấy toàn bộ hàm trong tầng Dao của user
	IUserDao userDao = new UserDaoImpl();

	@Override
	public UserModel login(String username, String password) {
		UserModel user = this.FindByUserName(username);
		if (user != null && password.equals(user.getPassWord())) {
			return user;
		}
		return null;
	}

	@Override
	public UserModel FindByUserName(String username) {
		return userDao.findByUserName(username);
	}

	@Override
	public void insert(UserModel user) {
		 userDao.insert(user);
	}
	
	@Override
	public void update(String name, String pass) {
		userDao.update(name, pass);
	}

	@Override
	public boolean register(String email, String username, String fullname, String password, String phone) {
		if (userDao.checkExistUsername(username)) {
			return false;
		}
//		long millis = System.currentTimeMillis();
//		java.sql.Date date = new java.sql.Date(millis);
		UserModel user = new UserModel();
		user.setEmail(email);
	    user.setUserName(username);
	    user.setFullName(fullname);
	    user.setPassWord(password);    
	    user.setPhone(phone);
	    userDao.insert(user);
		return true;
	}

	@Override
	public boolean checkExistEmail(String email) {
		return userDao.checkExistEmail(email);
	}

	@Override
	public boolean checkExistUsername(String username) {
		return userDao.checkExistUsername(username);
	}

	@Override
	public boolean checkExistPhone(String phone) {
		return userDao.checkExistPhone(phone);
	}

}
