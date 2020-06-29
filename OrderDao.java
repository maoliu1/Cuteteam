package com.demo.dao;

import java.util.List;

import com.demo.model.Order;

/**
 * dao��ӿ�-�����ݿ⣺������������Ʒ��Ĳ���
 * @author shao
 */
public interface OrderDao {

	/**
	 * ����һ���¶���
	 * @param order
	 */
	void add(Order order);

	/**
	 * ��ȡһ������
	 * @param id
	 * @return Order
	 */
	Order find(String id);

	/**
	 * ��ȡָ��״̬�µĶ����б�
	 * @param state
	 * @return List<Order>
	 */
	List<Order> getAll(boolean state);

	/**
	 * ����һ������
	 * @param order
	 */
	void update(Order order);

	/**
	 * ��ȡָ���û��µ�ָ��״̬�Ķ����б�
	 * @param state
	 * @param userId
	 * @return List<Order>
	 */
	List<Order> getAll(boolean state, String userId);

	/**
	 * ��ȡָ���û��µĶ����б�
	 * @param userId
	 * @return List<Order>
	 */
	List<Order> getAllOrder(String userId);

}