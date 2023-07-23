package com.bcollege;

import java.util.ArrayList;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

import jakarta.persistence.Query;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

public class DBHandler {
	
	String error="";
	
	public void save(User user) {
		
		try {
			SessionFactory factory=new Configuration().configure("hibernate.cfg.xml").addAnnotatedClass(User.class).buildSessionFactory();
			Session session=factory.getCurrentSession();
			session.beginTransaction();
			User s=new User(user.getEmail(),user.getPassword(),user.getName());
			session.save(s);
		    session.getTransaction().commit();
		    session.close();

			
		}
		catch (Exception e) {
			error=e.getMessage();
		}
		finally {
			
			
		}
		
	}
	
	public <R> User isValid(User user) {
		SessionFactory factory = new Configuration().configure("hibernate.cfg.xml").addAnnotatedClass(User.class).buildSessionFactory();
		   Session session = factory.getCurrentSession();
		   session.beginTransaction();
		   String hql = "from User where email = :email and password = :password";
		   org.hibernate.query.Query<R> query = session.createQuery(hql);
		   query.setParameter("email", user.getEmail());
		   query.setParameter("password", user.getPassword());
		   User u = (User) query.uniqueResult();
		   session.getTransaction().commit();
		   return u;
		
		
	}
	
public void save(Address address) {
		
		try {
			SessionFactory factory=new Configuration().configure("hibernate.cfg.xml").addAnnotatedClass(Address.class).buildSessionFactory();
			Session session=factory.getCurrentSession();
			session.beginTransaction();
	        ServletRequestAttributes attributes = (ServletRequestAttributes) RequestContextHolder.getRequestAttributes();
            HttpSession session1 = attributes.getRequest().getSession();
			User u=(User) session1.getAttribute("user");
            System.out.print(u.getEmail());

			Address a=new Address(0,address.getState(),address.getCity(),address.getAdl1(),address.getAdl2(),address.getAdl3(),address.getPin_code(), address.getPno(), u.getEmail(),1);
			session.save(a);
		    session.getTransaction().commit();
		    session.close();

			
		}
		catch (Exception e) {
			error=e.getMessage();
		}
		finally {
			
			
		}
		
	}

public ArrayList<Address> getSpots(Address address) {
	SessionFactory factory = new Configuration().configure("hibernate.cfg.xml").addAnnotatedClass(Address.class).buildSessionFactory();
	   Session session = factory.getCurrentSession();
	   session.beginTransaction();
	   String hql = "from Address where state = :state and city = :city and pin_code = :pin and adl1 = :adl1 and adl2 = :adl2 and statys= 1";
	   Query query = session.createQuery(hql);
	   query.setParameter("state", address.getState());
	   query.setParameter("city", address.getCity());
	   query.setParameter("pin", address.getPin_code());
	   query.setParameter("adl1", address.getAdl1());
	   query.setParameter("adl2", address.getAdl2());


	   ArrayList<Address> a =(ArrayList<Address>) query.getResultList();
	   session.getTransaction().commit();
	   return a;
	
	
}
public ArrayList<Address> getYourSpots(String email) {
	SessionFactory factory = new Configuration().configure("hibernate.cfg.xml").addAnnotatedClass(Address.class).buildSessionFactory();
	   Session session = factory.getCurrentSession();
	   session.beginTransaction();
	   String hql = "from Address where owner = :name";
	   Query query = session.createQuery(hql);
	   query.setParameter("name", email);
	  

	   ArrayList<Address> a =(ArrayList<Address>) query.getResultList();
	   session.getTransaction().commit();
	   return a;
}

public void updateSpotStatus(int spotId) {
	
	System.out.println("check2");

	SessionFactory factory = new Configuration().configure("hibernate.cfg.xml").addAnnotatedClass(Address.class).buildSessionFactory();
	   Session session = factory.getCurrentSession();
	Transaction transaction = session.beginTransaction();
	Address entity = session.get(Address.class, spotId);
	if(entity.getStatys()==1) {
	entity.setStatys(0);
	}
	else {
		entity.setStatys(1);
	}
	session.saveOrUpdate(entity);
	transaction.commit();
	session.close();

}


}
