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
		System.out.println("destroy호출 one");
	}

	@Override
	public void doFilter(ServletRequest req, ServletResponse res, FilterChain chain)
			throws IOException, ServletException {
	System.out.println("do필터 호출전 one");
	chain.doFilter(req,res);
	System.out.println("dofilter호출후 one");
	}

	@Override
	public void init(FilterConfig arg0) throws ServletException {
		System.out.println("init호출 one");
	}

}
