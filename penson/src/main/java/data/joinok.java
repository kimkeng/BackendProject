package data;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mysql.jdbc.exceptions.jdbc4.MySQLIntegrityConstraintViolationException;

@WebServlet("/mweb/joinok.do")
public class joinok extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public joinok() {
        super();
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");
		Connection co = null;
		PreparedStatement ps = null;
		PrintWriter pw = response.getWriter();
		try {
			dbconfig dg = new dbconfig();
			co = dg.dbinfo();		
			System.out.println(co);
			String id = request.getParameter("id");
			String name = request.getParameter("name");
			String pass = request.getParameter("pass");
			String email = request.getParameter("email");
			String tel = request.getParameter("tel");
			
			String ins = "insert into member_penson values ('0','"+id+"','"+name+"','"+pass+"','"+email+"','"+tel+"',now())"; 
			
			System.out.println(ins.toString());
			ps = co.prepareStatement(ins);
			ps.executeUpdate();
			ps.close();
			co.close();
			pw.write("<script>location.href='index.jsp';</script>");
		}catch(Exception e) {
			if(e instanceof MySQLIntegrityConstraintViolationException) {
				pw.write("<script>alert('중복된 아이디 입니다.');history.go(-1);</script>");
			}else {
			System.out.println("오류 입니다.");
			}
			//com.mysql.jdbc.exceptions.jdbc4.MySQLIntegrityConstraintViolationException: Duplicate entry 'test11' for key 'mid'
		}
	}

}

