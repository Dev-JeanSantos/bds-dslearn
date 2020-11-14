package com.fourtk.dslearn.repositories;

import org.springframework.data.jpa.repository.JpaRepository;

import com.fourtk.dslearn.entities.Topic;

public interface TopicRepository extends JpaRepository<Topic, Long>{

}
