package ch08;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ProductController
 */
@WebServlet("/pcontrol")
public class ProductController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	ProductService service;
	
	//오른쪽 버튼 눌러서 소스->오버라이드->innit(config) 실행했음 //request(요청)을 받았을 때, 최초로 딱 1번만 실행이 됩니다.
    //init() 서블릿 초기화
	@Override
	public void init(ServletConfig config) throws ServletException {
		super.init(config); //자기 기능을 초기화 하려고 하는 것임.
		service = new ProductService(); //서블릿이 초기화 될 때 ProductService 객체를 생성! 해서 밑에 서비스로 넘어간다.
		//-> init은 최초로 한 번만 실행한다. 딱 한번만 실행해서 공유하기 위해 
	}

    //오른쪽 버튼 눌러서 소스->오버라이드->service(HttpServletRequest...) 실행했음
    /*
      클라이언트에서 request가 오면 원래는 get 또는 post.. 로 실행됐었는데 필요없어서 다 지워줬음
      service로 실행되게끔 오버라이드를 해줬음 그래서 먼저  이것이 실행된다.
      오버라이드가 재정의를 하는 것이기 때문에 다시 재정의해서 사용함.
     */
    
  	@Override								//request 풀네임으로 바꿔주면 좋음!	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String action = request.getParameter("action"); //action 파라메터의 값을 얻어온다.
		String view = "";
		//처음은 action이 null이라 밑에 if문 실행되고 service가 실행됐음
		//두번째는 action이 값이 있음 순서대로 list로 먼저 가서 실행함. 밑에 메소드로 이동
		if(action == null) {
			getServletContext().getRequestDispatcher("/pcontrol?action=list").forward(request, response);
		} else {
			switch(action){
			case "list": view = list(request, response); break;
			case "info": view = info(request, response); break;
			}
			
			getServletContext().getRequestDispatcher("/ch08/" + view).forward(request, response);
		}
		
	}
	
	private String info(HttpServletRequest request, HttpServletResponse response) {
		//한가지 상품만 가져온다.
		Product p = service.find(request.getParameter("id"));
		request.setAttribute("p", p); //setAttribute는 set만 치고 컨트롤+스페이스바 누르면 바로 나옴, 단 하나의 상품을 상세보기 해줌.
		return "ProductInfo.jsp"; 
	}
	
	private String list(HttpServletRequest request, HttpServletResponse response) {
		//모든 상품을 가져온다.
		List<Product> plist = service.findAll();
		request.setAttribute("products1", plist); //setAttribute는 set만 치고 컨트롤+스페이스바 누르면 바로 나옴, 모든 상품들을 저장해서 보여줌.
		return "ProductList.jsp"; //이 파일로 리턴 받아서 위에 if else view에 들어감. 파일로 들어가보자.
		
		//
	}
	

}
