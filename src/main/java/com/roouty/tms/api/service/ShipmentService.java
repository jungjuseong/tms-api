package com.roouty.tms.api.service;

import com.roouty.tms.api.entity.ShipmentEntity;
import javax.validation.constraints.Min;

/**
 * @author : github.com/wemeetmobility
 * @project : roouty tms-api
 **/
public interface ShipmentService {
  public Iterable<ShipmentEntity> getShipmentByOrderId(@Min(value = 1L, message = "Invalid product ID.")  String id);
}
