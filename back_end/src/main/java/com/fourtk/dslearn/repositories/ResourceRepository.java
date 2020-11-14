package com.fourtk.dslearn.repositories;

import org.springframework.data.jpa.repository.JpaRepository;

import com.fourtk.dslearn.entities.Resource;

public interface ResourceRepository extends JpaRepository<Resource, Long>{

}
