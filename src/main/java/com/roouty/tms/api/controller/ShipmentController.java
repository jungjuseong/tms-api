package com.roouty.tms.api.controller;

import com.roouty.tms.api.ShipmentApi;
import com.roouty.tms.api.hateoas.ShipmentRepresentationModelAssembler;
import com.roouty.tms.api.model.Shipment;
import com.roouty.tms.api.service.ShipmentService;
import java.util.List;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RestController;

/**
 * @author : github.com/wemeetmobility
 * @project : roouty tms-api
 **/
@RestController
public class ShipmentController implements ShipmentApi {

  private ShipmentService service;
  private final ShipmentRepresentationModelAssembler assembler;

  public ShipmentController(ShipmentService service, ShipmentRepresentationModelAssembler assembler) {
    this.service = service;
    this.assembler = assembler;
  }

  @Override
  public ResponseEntity<List<Shipment>> getShipmentByOrderId(String id) {
    return ResponseEntity.ok(assembler.toListModel(service.getShipmentByOrderId(id)));
  }
}
