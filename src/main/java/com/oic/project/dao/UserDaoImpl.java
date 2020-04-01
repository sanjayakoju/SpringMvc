package com.oic.project.dao;

import javax.annotation.Resource;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.oic.project.models.User;

@Repository
public class UserDaoImpl implements UserDao{

	@Resource
	SessionFactory sessionFactory;
	
	@Transactional
	public int addUser(User u) {
		// TODO Auto-generated method stub
		
		Session session=sessionFactory.getCurrentSession();
		int id=(Integer) session.save(u);
		return id;
		
	}

	@Transactional
	public boolean userLogin(String un, String pswd) {
		// TODO Auto-generated method stub
		
		Session session=sessionFactory.getCurrentSession();
		Criteria crt=session.createCriteria(User.class);
		crt.add(Restrictions.eq("username", un)).add(Restrictions.eq("password", pswd));
		User u=(User) crt.uniqueResult();
		if(u!=null)
		{
			return true;
		}
		
		return false;
	}

}
