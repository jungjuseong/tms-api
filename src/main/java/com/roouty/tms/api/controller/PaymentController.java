package com.roouty.tms.api.controller;

import com.roouty.tms.api.PaymentApi;
import com.roouty.tms.api.hateoas.PaymentRepresentationModelAssembler;
import com.roouty.tms.api.model.Authorization;
import com.roouty.tms.api.model.PaymentReq;
import com.roouty.tms.api.service.PaymentService;
import javax.validation.Valid;
import javax.validation.constraints.NotNull;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RestController;

/**
 * @author : github.com/wemeetmobility
 * @project : roouty tms-api
 **/
@RestController
public class PaymentController implements PaymentApi {

  private PaymentService service;
  private final PaymentRepresentationModelAssembler assembler;

  public PaymentController(PaymentService service, PaymentRepresentationModelAssembler assembler) {
    this.service = service;
    this.assembler = assembler;
  }

  @Override
  public ResponseEntity<Authorization> authorize(@Valid PaymentReq paymentReq) {
    return null;
  }

  @Override
  public ResponseEntity<Authorization> getOrdersPaymentAuthorization(
      @NotNull @Valid String id) {
    return null;
  }
}
