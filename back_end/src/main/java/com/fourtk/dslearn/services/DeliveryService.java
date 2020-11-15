package com.fourtk.dslearn.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.fourtk.dslearn.dto.DeliveryRevisionDTO;
import com.fourtk.dslearn.entities.Delivery;
import com.fourtk.dslearn.repositories.DeliveryRepository;

@Service
public class DeliveryService {
	
	@Autowired
	private DeliveryRepository repository;
	
	@Transactional
	public void saveRevision(Long id, DeliveryRevisionDTO dto) {
		Delivery delivery = repository.getOne(id);
		delivery.setStatus(dto.getStatus());
		delivery.setFeedback(dto.getFeedback());
		delivery.setCorrectCount(dto.getCorrectCount());
		
		repository.save(delivery);
		
	}
}
