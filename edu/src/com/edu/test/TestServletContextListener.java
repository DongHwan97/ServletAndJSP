package com.edu.test;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;

@WebListener
public class TestServletContextListener implements ServletContextListener{
public TestServletContextListener() {
	System.out.println("��ü����");
}
	@Override
	public void contextDestroyed(ServletContextEvent arg0) {
		System.out.println("��ü");
	}

	@Override
	public void contextInitialized(ServletContextEvent arg0) {
		// TODO Auto-generated method stub
		System.out.println("�ʱ�ȭ");
	}

}
