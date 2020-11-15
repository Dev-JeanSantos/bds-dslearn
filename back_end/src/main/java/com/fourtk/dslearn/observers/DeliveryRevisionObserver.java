package com.fourtk.dslearn.observers;

import com.fourtk.dslearn.entities.Delivery;

public interface DeliveryRevisionObserver {
	
	void onSaveRevision(Delivery delivery);
}
