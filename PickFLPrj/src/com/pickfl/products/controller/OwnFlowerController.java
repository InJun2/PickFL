package com.pickfl.products.controller;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.pickfl.member.model.vo.MemberVo;
import com.pickfl.products.model.service.CurrentFlowerService;
import com.pickfl.products.model.service.ProductService;
import com.pickfl.products.model.vo.CurrentFlowerVo;
import com.pickfl.products.model.vo.ProductVo;

@WebServlet("/own-flower")
public class OwnFlowerController extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String searchName = req.getParameter("searchName");
		
		List<ProductVo> productList = new ProductService().search(searchName);
		
		String filePath = req.getServletContext().getRealPath("/upload") + File.separator;
		req.setAttribute("filePath", filePath);
		req.setAttribute("productList", productList);
		MemberVo loginUser =  (MemberVo) req.getSession().getAttribute("loginUser");
		if(loginUser != null) {
			List<CurrentFlowerVo> list = new CurrentFlowerService().selectAll(loginUser.getMemberNo());
			req.setAttribute("list", list);
		}
		
		req.getRequestDispatcher("/WEB-INF/views/products/own-flower.jsp").forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		String productColor = req.getParameter("product_color");
		
		List<ProductVo> productList = new ProductService().searchByColor(productColor);
		
		String filePath = req.getServletContext().getRealPath("/upload") + File.separator;
		req.setAttribute("filePath", filePath);
		req.setAttribute("productList", productList);
		
		req.getRequestDispatcher("/WEB-INF/views/products/own-flower.jsp").forward(req, resp);
	
	}
}
