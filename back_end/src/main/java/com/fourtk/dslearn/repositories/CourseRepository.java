package com.fourtk.dslearn.repositories;

import org.springframework.data.jpa.repository.JpaRepository;

import com.fourtk.dslearn.entities.Course;

public interface CourseRepository extends JpaRepository<Course, Long>{

}
