package com.demo.dao;

import com.demo.model.User;

/**
 * dao��ӿ�-�����ݿ⣺�û���Ĳ���
 * @author shao
 */
public interface UserDao {

	/**
	 * ע��һ�����û�
	 * @param user
	 */
	void add(User user);

	/**
	 * ��ȡһ���û�
	 * @param id
	 * @return User
	 */
	User find(String id);

	/**
	 * �û���¼��֤
	 * @param username
	 * @param password
	 * @return User
	 */
	User find(String username, String password);

}