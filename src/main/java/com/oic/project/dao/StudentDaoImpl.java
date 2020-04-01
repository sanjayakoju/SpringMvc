package com.oic.project.dao;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.oic.project.models.Student;

@Repository
public class StudentDaoImpl implements StudentDao{

	@Resource
	SessionFactory sessionFactory;
	
	@Transactional
	public int addStudent(Student s) {
		// TODO Auto-generated method stub
		Session session=sessionFactory.getCurrentSession();
		int id=(Integer) session.save(s);
		return id;
	}

	@Transactional
	public void deleteStudent(int studentId) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		Student s = (Student)session.get(Student.class, studentId);
		session.delete(s);
		
	}

	@Transactional
	public void updateStudent(Student s) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		session.update(s);
		
	}

	@Transactional
	public Student getById(int studentId) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.getCurrentSession();
		Student s = (Student)session.get(Student.class, studentId);

		return s;
	}

	@Transactional
	public List<Student> getAll() {
		Session session = sessionFactory.getCurrentSession();
		Criteria crt= session.createCriteria(Student.class);
		
		return crt.list();
	}

}
