package com.edu.test;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

public class FlowFilterOne implements Filter{

	@Override
	public void destroy() {
		// TODO Auto-generated method stub
		System.out.println("destroyȣ�� one");
	}

	@Override
	public void doFilter(ServletRequest req, ServletResponse res, FilterChain chain)
			throws IOException, ServletException {
	System.out.println("do���� ȣ���� one");
	chain.doFilter(req,res);
	System.out.println("dofilterȣ���� one");
	}

	@Override
	public void init(FilterConfig arg0) throws ServletException {
		System.out.println("initȣ�� one");
	}

}
