package com.demo.dao;

import java.util.List;

import com.demo.model.Clothes;

/**
 * dao��ӿ�-�����ݿ⣺��Ʒ��Ĳ���
 * @author shao
 */
public interface ClothesDao {

	/**
	 * ����һ������Ʒ
	 * @param clothes
	 */
	void add(Clothes clothes);

	/**
	 * ��ȡһ����Ʒ
	 * @param id
	 * @return Clothes
	 */
	Clothes find(String id);
	
	/**
	 * ��ȡ��Ʒ�б��ҳ����
	 * @param startIndex
	 * @param pageSize
	 * @return List<Clothes>
	 */
	public List<Clothes> getPageData(int startIndex, int pageSize);
	
	/**
	 * ��ȡ��Ʒ�б�����
	 * @return int
	 */
	public int getTotalRecord();

	/**
	 * ��ȡָ�������µ���Ʒ�б��ҳ����
	 * @param startIndex
	 * @param pageSize
	 * @param categoryId
	 * @return List<Clothes>
	 */
	public List<Clothes> getPageData(int startIndex, int pageSize, String categoryId);
	
	/**
	 * ��ȡָ�������µ���Ʒ�б�����
	 * @param categoryId
	 * @return int
	 */
	public int getTotalRecord(String categoryId);

}