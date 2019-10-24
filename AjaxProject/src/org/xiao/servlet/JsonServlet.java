package org.xiao.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.xiao.entity.Thencth;
import net.sf.json.JSONObject;

@WebServlet("/JsonServlet")
public class JsonServlet extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		
		String name = request.getParameter("name");
		String age = request.getParameter("age");
		
		System.out.println(name+"=="+age);
		PrintWriter outd = response.getWriter();
		//
		Thencth thencth1 = new Thencth();
		thencth1.setAge(27);
		thencth1.setName("设计式");
		
		Thencth thencth2 = new Thencth();
		thencth2.setAge(18);
		thencth2.setName("数据改");
		
		Thencth thencth3 = new Thencth();
		thencth3.setAge(22);
		thencth3.setName("降低功");
		
		JSONObject json = new JSONObject();
		json.put("thencth1", thencth1);
		json.put("thencth2", thencth2);
		json.put("thencth3", thencth3);
		outd.print(json);
		outd.close();
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
