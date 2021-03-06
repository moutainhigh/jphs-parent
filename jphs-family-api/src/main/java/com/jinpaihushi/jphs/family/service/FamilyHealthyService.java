package com.jinpaihushi.jphs.family.service;

import com.jinpaihushi.jphs.family.model.FamilyHealthy;
import com.jinpaihushi.service.BaseService;

/**
 * 
 * @author scj
 * @date 2017-09-22 15:56:54
 * @version 1.0
 */
public interface FamilyHealthyService extends BaseService<FamilyHealthy> {

	/**
	 * 查看健康计划详情
	 * @param familyHealthy
	 * @return
	 */
	FamilyHealthy getDetailMemberAndHealthy(FamilyHealthy familyHealthy);

}