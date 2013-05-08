/*
 * Copyright [duowan.com]
 * Web Site: http://www.duowan.com
 * Since 2005 - 2013
 */

package com.google.code.rapid.queue.metastore;

import com.google.code.rapid.queue.metastore.model.Binding;
import com.google.code.rapid.queue.metastore.query.BindingQuery;


/**
 * 用于生成Binding相关数据对象的默认值
 * 
 * @author badqiu email:badqiu(a)gmail.com
 * @version 1.0
 * @since 1.0
 * 
 */
public class BindingDataFactory {
	
	public static BindingQuery newBindingQuery() {
		BindingQuery query = new BindingQuery();
		query.setPage(1);
		query.setPageSize(10);
		
	  	query.setRouterKey(new String("1"));
	  	query.setRemarks(new String("1"));
		return query;
	}
	
	public static Binding newBinding() {
		Binding obj = new Binding();
		
	  	obj.setRouterKey(new java.lang.String("1"));
	  	obj.setRemarks(new java.lang.String("1"));
		return obj;
	}
}