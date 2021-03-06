package com.jinpaihushi.utils;

import java.util.LinkedList;
import java.util.List;

public class ArraysUtils {
    /**
     * 处理两个数组中相通的元素并移除
     * @param arr1
     * @param arr2
     * @return
     */
    public static String[] arrContrast(String[] arr1, String[] arr2) {

        List<String> list = new LinkedList<String>();
        for (String str : arr1) { //处理第一个数组,list里面的值为1,2,3,4
            if (!list.contains(str)) {
                list.add(str);
            }
        }
        for (String str : arr2) { //如果第二个数组存在和第一个数组相同的值，就删除
            if (list.contains(str)) {
                list.remove(str);
            }
        }
        String[] result = {}; //创建空数组
        return list.toArray(result); //List to Array
    }
}
