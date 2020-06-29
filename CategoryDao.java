package com.demo.dao;

import java.util.List;

import com.demo.model.Category;

/**
 * dao��ӿ�-�����ݿ⣺�����Ĳ���
 * @author shao
 */
public interface CategoryDao {

	/**
	 * ����һ���·���
	 * @param category
	 */
	void add(Category category);

	/**
	 * ��ȡһ������
	 * @param id
	 * @return Category
	 */
	Category find(String id);

	/**
	 * ��ȡȫ������
	 * @return List<Category>
	 */
	List<Category> getAll();

}