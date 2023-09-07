package data;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/mweb/m_loginok.do")
public class loginok extends HttpServlet {
	private static final long serialVersionUID = 1L;
	PrintWriter pw =null;
	HttpSession session = null;
	RequestDispatcher rd = null;
       
    public loginok() {
        super();
    }


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");
		Connection co = null;
		PreparedStatement pre = null;
		try {
		dbconfig dg = new dbconfig();
		co = dg.dbinfo();	
		String loginid = request.getParameter("login_id").intern();
		String loginpw = request.getParameter("login_pw").intern();
		String sql = "select * from member_penson where mid=?";
		pre = co.prepareStatement(sql);
		pre.setString(1, loginid);
		ResultSet rs = pre.executeQuery();
		
		String sqlid = "";
		String sqlpw = "";
		String sqlnm = "";
		while(rs.next()) {
			sqlid = rs.getString("mid").intern();
			sqlpw = rs.getString("mpass").intern();
			sqlnm = rs.getString("mname").intern();
		};
		this.pw = response.getWriter();
		
		if(loginid == "" || loginpw == "") {
			this.pw.write("<script>alert('정상적인 접근 방식이 아닙니다.'); history.go(-1);</script>");
		}
		else {
			if(loginid == sqlid && loginpw == sqlpw) {
				this.session = request.getSession();
				this.session.setAttribute("userid", loginid);
				this.session.setAttribute("username", sqlnm);
				
				this.pw.write("<script>alert('로그인 되셨습니다.');"
						+"location.href='./index.jsp';"
						+"</script>");
			}
			else {
				this.pw.write("<script>alert('회원정보가 확인 되지 않습니다.'); history.go(-1);</script>");
			}
		}
		
		pre.close();
		co.close();
		this.pw.close();
		}catch(Exception e) {
			System.out.println("오류");
		}
	}

}

