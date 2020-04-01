package com.oic.project.dao;

import java.util.List;

import com.oic.project.models.Student;

public interface StudentDao {
	
	int addStudent(Student s);
	void deleteStudent(int studentId);
	void updateStudent(Student s);
	Student getById(int studentId);
	List<Student> getAll();

}
