package com.fourtk.dslearn.repositories;

import org.springframework.data.jpa.repository.JpaRepository;

import com.fourtk.dslearn.entities.Notification;

public interface NotificationRepository extends JpaRepository<Notification, Long>{

}
