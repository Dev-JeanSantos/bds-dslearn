package com.fourtk.dslearn.resources;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.fourtk.dslearn.dto.DeliveryRevisionDTO;
import com.fourtk.dslearn.services.DeliveryService;

@RestController
@RequestMapping(value = "/deliverys")
public class DeliveryResource {
	
	@Autowired
	private DeliveryService service;
	
	@PreAuthorize("hasAnyRole('ADMIN','INSTRUCTOR')")
	@PutMapping(value = "/{id}")
	public ResponseEntity<Void> saveRevision(@PathVariable Long id, @Valid @RequestBody DeliveryRevisionDTO dto){
		
		service.saveRevision(id, dto);
		
		return ResponseEntity.noContent().build();			
		
	}
	
	
}
