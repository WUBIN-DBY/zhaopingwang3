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
		System.out.println("��ʾ���з�����");
		//����dao������ѯ�����û���Ϣ
		List<Yonghu> yh=dao.listAll();
		System.out.println(yh.size());
		//2����ѯ�����ݴ洢��request��Χ��
		request.setAttribute("yh", yh);
		//3,��ת����ʾ���е��û���jsp
		request.getRequestDispatcher("YongHu.jsp").forward(request, response);
		break;
	}
	case"add":
	{
		System.out.println("����û�������");
		String yonghuming=request.getParameter("yonghuming");
		String yonghudianhua=request.getParameter("yonghudianhua");
		String yonghuxingbie=request.getParameter("yonghuxingbie");
		String yonghudizhi=request.getParameter("yonghudizhi");
		String yonghuemaildizhi=request.getParameter("yonghuemaildizhi");
		//2.�����Է�װ��һ��java����
		Yonghu y=new Yonghu();
		y.setYonghudianhua(yonghudianhua);
		y.setYonghudizhi(yonghudizhi);
		y.setYonghuemaildizhi(yonghuemaildizhi);
		y.setYonghuming(yonghuming);
		y.setYonghuxingbie(yonghuxingbie);
		//3����dao������������¼ӵ�������ӵ����ݿ���
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
		System.out.println("ɾ���û�������");
		String yonghudianhua=request.getParameter("yonghudianhua");
		boolean result=dao.deleteYongHu(Integer.parseInt(yonghudianhua));
		request.setAttribute("deleteResult", result);
		request.getRequestDispatcher("YongHuServlet?method=listAll").forward(request, response);
		break;
	}
	case"update":
	{
		System.out.println("�޸��û�������");
		break;
	}
	case"getYonghuInfo":
	{
		System.out.println("�޸�ǰ�Ĳ�ѯ");
		//1��ȡ�û������Ӵ��������û��绰
		String yonghudianhua=request.getParameter("yonghudianhua");
		//2����dao��ѯ������û�����Ϣ
		Yonghu yh=dao.getYonghuDetailByld(Integer.parseInt(yonghudianhua));
		//3����ѯ�������û��洢��request�Ķ�����
		request.setAttribute("yh", yh);
		//4��ת���޸ĵ�jsp����ʾ�޸ĵ��û���Ϣ
		request.getRequestDispatcher("updateYonghu.jsp").forward(request, response);
		break;
	}
	}
	}
}
