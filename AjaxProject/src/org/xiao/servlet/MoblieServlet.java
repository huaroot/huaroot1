package org.xiao.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import jdk.internal.org.objectweb.asm.tree.analysis.Value;

@WebServlet("/MoblieServlet")
public class MoblieServlet extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		String moblie = request.getParameter("mobile");
		
		System.out.println(moblie);
		PrintWriter outd = response.getWriter();
		if("12544556677".equals(moblie)) {
			//outd.write("请号码已经存在，请换一个输入");
			outd.write("{\"msg\":\"true\"}");
			//outd.write("true");
		}else {
			//outd.write("注册成功！");
			outd.write("{\"msg\":\"false\"}");
			
			//outd.write("false");
		}
		System.out.println("--------"+moblie);
		outd.close();
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
