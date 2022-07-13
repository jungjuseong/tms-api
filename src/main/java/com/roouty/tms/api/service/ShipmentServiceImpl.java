package com.roouty.tms.api.service;

import com.roouty.tms.api.entity.ShipmentEntity;
import com.roouty.tms.api.repository.ShipmentRepository;
import java.util.List;
import java.util.UUID;
import javax.validation.constraints.Min;

import org.springframework.stereotype.Service;

/**
 * @author : github.com/wemeetmobility
 * @project : roouty tms-api
 **/
@Service
public class ShipmentServiceImpl implements ShipmentService {

  private ShipmentRepository repository;

  public ShipmentServiceImpl(ShipmentRepository repository) {
    this.repository = repository;
  }

  @Override
  public Iterable<ShipmentEntity> getShipmentByOrderId(
      @Min(value = 1L, message = "Invalid shipment ID.") String id) {
    return repository.findAllById(List.of(UUID.fromString(id)));
  }
}
