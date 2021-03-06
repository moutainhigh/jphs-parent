package com.jinpaihushi.jphs.commodity.dao;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.github.pagehelper.Page;
import com.jinpaihushi.dao.BaseDao;
import com.jinpaihushi.jphs.commodity.model.CommodityOrder;

/**
 * 
 * @author yangsong
 * @date 2017-08-09 09:02:59
 * @version 1.0
 */
@Repository("commodityOrderDao")
public interface CommodityOrderDao extends BaseDao<CommodityOrder> {

    CommodityOrder getObjectByOrder(Map<String, Object> map);

    List<CommodityOrder> getOrderList(Map<String, Object> map);

    CommodityOrder getOrderDetail(String orderId);

    Integer updateRemindTime(CommodityOrder commodityOrder);

    Integer confimOrder(CommodityOrder commodityOrder);

    Integer deleteOrder(CommodityOrder commodityOrder);

    List<CommodityOrder> getListByOrderNo(String orderNo);

    List<HashMap<String, Object>> loadS(CommodityOrder commodityOrder);

    Integer toUpdatePayPrice(Map<String, Object> map);

    List<CommodityOrder> getOrderList1(Map<String, Object> map);

    List<CommodityOrder> getStatusByOrderNo(String orderNo);

    Page<CommodityOrder> getList(CommodityOrder commodityOrder);

    Page<CommodityOrder> getTkList(CommodityOrder commodityOrder);

    /**
     * 商品订单活动记录结算收益
     * @return
     */
    List<Map<String, Object>> getSendTransaction();
    
    /**
     * 查询有效订单数量
     * @param activityId
     * @param userId
     * @param startTime
     * @param endTime
     * @return
     */
    Integer getIndexNumber(@Param("activityId") String activityId, @Param("userId") String userId,
            @Param("startTime") Date startTime, @Param("endTime") Date endTime);
}
