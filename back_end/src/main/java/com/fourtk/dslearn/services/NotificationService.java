package com.fourtk.dslearn.services;

import java.time.Instant;

import javax.annotation.PostConstruct;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.fourtk.dslearn.dto.NotificationDTO;
import com.fourtk.dslearn.entities.Delivery;
import com.fourtk.dslearn.entities.Notification;
import com.fourtk.dslearn.entities.User;
import com.fourtk.dslearn.observers.DeliveryRevisionObserver;
import com.fourtk.dslearn.repositories.NotificationRepository;

@Service
public class NotificationService implements DeliveryRevisionObserver{
	
	@Autowired
	private NotificationRepository repository;
	
	@Autowired
	private AuthService authService;
	
	@Autowired
	private DeliveryService deliveryService;
	
	@PostConstruct
	private void initialize() {
		deliveryService.subscribeDeliveryRevisionObserver(this);
	}
	
	@Transactional(readOnly = true)
	public  Page<NotificationDTO> notificationsForCurrentUser(Boolean unReadOnly, Pageable pageable){
		User user = authService.authenticated();
		Page<Notification> page = repository.find(user, unReadOnly, pageable);
		return page.map(x -> new NotificationDTO(x));		
	}
	
	@Transactional
	public void saveDeliveryNotification(Delivery delivery) {
		
		Long sectionId = delivery.getLesson().getSection().getId();
		Long resourceId =  delivery.getLesson().getSection().getResource().getId();
		Long offerId = delivery.getLesson().getSection().getResource().getOffer().getId();
		
		String route = "/offers/" + offerId + "/resources/" + resourceId + "/sections/" + sectionId;
		String text = delivery.getFeedback();
		Instant moment = Instant.now();
		User user = delivery.getEnrollment().getStudent();
		
		Notification notification = new Notification(null, text, moment, false, route, user);
		
		repository.save(notification);
		
	}

	@Override
	public void onSaveRevision(Delivery delivery) {
		saveDeliveryNotification(delivery);
		
	}
}
