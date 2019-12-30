package com.WUT.RW.control;
import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.WUT.RW.model.YongHuDAO;
import com.WUT.RW.model.Yonghu;
@WebServlet("/YongHu")
public class YongHuServlet extends HttpServlet {
	private YongHuDAO dao=new YongHuDAO();
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      doPost(request,response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	String method=request.getParameter("method");
	switch(method) {
	case"listAll":
	{
		System.out.println("显示所有方法！");
		//调用dao方法查询所有用户信息
		List<Yonghu> yh=dao.listAll();
		System.out.println(yh.size());
		//2将查询的数据存储到request范围内
		request.setAttribute("yh", yh);
		//3,跳转到显示所有的用户的jsp
		request.getRequestDispatcher("YongHu.jsp").forward(request, response);
		break;
	}
	case"add":
	{
		System.out.println("添加用户方法！");
		String yonghuming=request.getParameter("yonghuming");
		String yonghudianhua=request.getParameter("yonghudianhua");
		String yonghuxingbie=request.getParameter("yonghuxingbie");
		String yonghudizhi=request.getParameter("yonghudizhi");
		String yonghuemaildizhi=request.getParameter("yonghuemaildizhi");
		//2.将属性封装成一个java对象
		Yonghu y=new Yonghu();
		y.setYonghudianhua(yonghudianhua);
		y.setYonghudizhi(yonghudizhi);
		y.setYonghuemaildizhi(yonghuemaildizhi);
		y.setYonghuming(yonghuming);
		y.setYonghuxingbie(yonghuxingbie);
		//3调用dao方法，将这个新加的数据添加到数据库中
		boolean result=dao.addYongHu(y);
		if(result) {
			request.getRequestDispatcher("YongHuServlet?method=listAll").forward(request, response);
		}else {
		request.getRequestDispatcher("AddYongHu.jsp").forward(request, response);
		break;
		}
	}
	case"delete":
	{
		System.out.println("删除用户方法！");
		String yonghudianhua=request.getParameter("yonghudianhua");
		boolean result=dao.deleteYongHu(Integer.parseInt(yonghudianhua));
		request.setAttribute("deleteResult", result);
		request.getRequestDispatcher("YongHuServlet?method=listAll").forward(request, response);
		break;
	}
	case"update":
	{
		System.out.println("修改用户方法！");
		break;
	}
	case"getYonghuInfo":
	{
		System.out.println("修改前的查询");
		//1获取用户超链接传过来的用户电话
		String yonghudianhua=request.getParameter("yonghudianhua");
		//2调用dao查询出这个用户的信息
		Yonghu yh=dao.getYonghuDetailByld(Integer.parseInt(yonghudianhua));
		//3将查询出来的用户存储到request的对象中
		request.setAttribute("yh", yh);
		//4跳转到修改的jsp上显示修改的用户信息
		request.getRequestDispatcher("updateYonghu.jsp").forward(request, response);
		break;
	}
	}
	}
}
