package dao;

import java.util.List;

import javax.persistence.EntityManager;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import org.hibernate.query.Query;

import com.mysql.cj.protocol.Resultset;

import DBconnection.connection;
import model.customermodel;

public class customerdao {

 Session session = null;
    Transaction tx = null;
	SessionFactory sf = null;
	List<customermodel> list = null;

	public void insertuser(customermodel c) {
		try {

			session = new connection().getsession();
			tx = session.beginTransaction();

			session.save(c);
			tx.commit();

			session.close();

		} catch (Exception e) {
			e.printStackTrace();
		}

	}
	
	public customermodel login(customermodel c) {
		try {
			session = new connection().getsession();
			tx = session.beginTransaction();
			Query q = session.createQuery("from customermodel c where c.email=:email and c.password=:password");
			q.setParameter("email", c.getEmail());
			q.setParameter("password", c.getPassword());
			list = q.list();
			c = list.get(0);
			tx.commit();
			session.close();
		} catch (Exception e) {
			// TODO: handle exception
			c = null;
			e.printStackTrace();
		}
		return c;
	}

	
	public customermodel updateuser(customermodel c) {
		
		session = new connection().getsession();
		tx = session.beginTransaction();
		Query q = session.createQuery("update customermodel c set c.name =?1 ,c.email =?2,c.phone=?3 where c.id = ?4");
		q.setParameter(1, c.getName());
		q.setParameter(2, c.getEmail());
		q.setParameter(3, c.getPhone());
		q.setParameter(4, c.getId());
		
		q.executeUpdate();
		tx.commit();
		session.close();
		return c;
		
	}
	
	public Boolean checkpassword (String email,String pass)
	{
		Boolean flag = false;
		try {
			session = new connection().getsession();
			tx = session.beginTransaction();
			
			Query q = session.createQuery("select * from customermodel where email =? and password = ?");
			q.setParameter(1, email);
			q.setParameter(2, pass);
			
			
		} catch (Exception e) {
		      e.printStackTrace();
		}
		
	return null;
		

}
	
	public customermodel deleteuser(int id) {
		customermodel c = null;
		session = new connection().getsession();
		tx = session.beginTransaction();
		
		Query q = session.createQuery("delete from customermodel c where c.id=?1");
		q.setParameter(1, id);
		q.executeUpdate();
		tx.commit();
		session.close();
		return c;
		
	}
	
	public  boolean checkpassword1(int id, String op) {
		Boolean flag = false;
		try {
			session = new connection().getsession();
			tx = session.beginTransaction();
			
			Query q = session.createQuery("from customermodel c where c.email=:email and c.password=:password");
			q.setParameter(1, id);
			q.setParameter(2, op);
			
			flag = true;
			
			tx.commit();
			session.close();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return flag;
			
	}
	
	public customermodel updatePassword(int id , String np) {
		
		customermodel c1 = null;
		try {
			session = new connection().getsession();
			tx = session.beginTransaction();
			
			Query q = session.createQuery("update customermodel c set c.password =?1 where c.id = ?2");
			
			q.setParameter(1, np);
			q.setParameter(2, id);
			
			q.executeUpdate();
			tx.commit();
			session.close();
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return c1;
	
		
	}
	
	
}
	
	

