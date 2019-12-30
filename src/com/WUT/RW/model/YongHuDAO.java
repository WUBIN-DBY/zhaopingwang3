package com.WUT.RW.model;
import java.sql.Connection;
import java.sql.DriverManager;
import java.util.ArrayList;
import java.util.List;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.ResultSetHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;
public class YongHuDAO {
	public List<Yonghu> listAll(){
		List<Yonghu> yh=null;
		try {
			 Class.forName("com.mysql.jdbc.Driver");
			 Connection connection=DriverManager.getConnection("jdbc:mysql://localhost:3306/zhaopingwang?serverTimezone=UTC","root","13367115356wb");
			 QueryRunner run = new QueryRunner();
			ResultSetHandler<List<Yonghu>> h = new BeanListHandler<Yonghu>(Yonghu.class);
			yh= run.query(connection,"SELECT * FROM yonghu", h);	
		}catch(Exception e) {
			yh=new ArrayList<>();
			e.printStackTrace();
		}
		return yh;
	}
	public boolean  addYongHu(Yonghu y) {
		boolean result=false;
		  try {
				Class.forName("com.mysql.jdbc.Driver");
				Connection  connection=DriverManager.getConnection("jdbc:mysql://localhost:3306/zhaopingwang?serverTimezone=UTC","root","13367115356wb");
				QueryRunner run = new QueryRunner();
				int count=run.update(connection,"insert into  yonghu(YONGHUMING,YONGHUDIANHUA,YONGHUXINGBIE,YONGHUDIZHI,YONGHUEMAILDIZHI)  values(?,?,?,?,?)",y.getYonghuming(),y.getYonghudianhua(),y.getYonghuxingbie(),y.getYonghudizhi(),y.getYonghuemaildizhi());
				result=count>0?true:false;
			} catch (Exception e) {
				e.printStackTrace();
			}
			  
		return result;
	}
	
	
	
	public boolean  deleteYongHu(int dianhua) {
		boolean result=false;
		  try {
				Class.forName("com.mysql.jdbc.Driver");
				Connection  connection=DriverManager.getConnection("jdbc:mysql://localhost:3306/zhaopingwang?serverTimezone=UTC","root","13367115356wb");
				
				QueryRunner run = new QueryRunner();
				int count=run.update(connection,"delete from yonghu where dianhua=?",dianhua);
				result=count>0?true:false;
			} catch (Exception e) {
				e.printStackTrace();
			}
			  
		return result;
	}
}
