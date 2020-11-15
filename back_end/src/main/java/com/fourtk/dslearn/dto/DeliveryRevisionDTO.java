package com.fourtk.dslearn.dto;

import java.io.Serializable;

import com.fourtk.dslearn.entities.Delivery;
import com.fourtk.dslearn.entities.enuns.DeliverStatus;

public class DeliveryRevisionDTO  implements Serializable{

	private static final long serialVersionUID = 1L;

	private DeliverStatus status;
	private String feedback;
	private Integer correctCount;
	
	public DeliveryRevisionDTO() {
		// TODO Auto-generated constructor stub
	}

	public DeliveryRevisionDTO(DeliverStatus status, String feedback, Integer correctCount) {
		this.status = status;
		this.feedback = feedback;
		this.correctCount = correctCount;
	}
	
	public DeliveryRevisionDTO(Delivery entity) {
		status = entity.getStatus();
		feedback = entity.getFeedback();
		correctCount = entity.getCorrectCount();
	}

	public DeliverStatus getStatus() {
		return status;
	}

	public void setStatus(DeliverStatus status) {
		this.status = status;
	}

	public String getFeedback() {
		return feedback;
	}

	public void setFeedback(String feedback) {
		this.feedback = feedback;
	}

	public Integer getCorrectCount() {
		return correctCount;
	}

	public void setCorrectCount(Integer correctCount) {
		this.correctCount = correctCount;
	}	
}
