package dao;

import java.util.List;

import javax.security.auth.message.callback.PrivateKeyCallback.Request;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.hql.internal.ast.HqlASTFactory;
import org.hibernate.query.Query;

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

}
	
	

