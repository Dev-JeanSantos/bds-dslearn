package com.fourtk.dslearn.repositories;

import org.springframework.data.jpa.repository.JpaRepository;

import com.fourtk.dslearn.entities.User;

public interface UserRepository extends JpaRepository<User, Long>{

}
