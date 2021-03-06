package com.jinpaihushi.jphs.family.dao;

import org.springframework.stereotype.Repository;

import com.github.pagehelper.Page;
import com.jinpaihushi.dao.BaseDao;
import com.jinpaihushi.jphs.family.model.FamilyOrder;

/**
 * 
 * @author scj
 * @date 2017-09-22 15:56:54
 * @version 1.0
 */
@Repository("familyOrderDao")
public interface FamilyOrderDao extends BaseDao<FamilyOrder> {
	
	/**
	 * 家庭护士-订单列表
	 * @param familyOrder
	 * @return
	 */
	Page<FamilyOrder> familyOrderIndex(FamilyOrder familyOrder);
	
	/**
	 * 根据id查询订单详情
	 * @param familyOrder
	 * @return
	 */
	FamilyOrder familyOrderOneId(FamilyOrder familyOrder);
	
}
