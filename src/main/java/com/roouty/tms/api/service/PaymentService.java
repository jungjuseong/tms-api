package com.roouty.tms.api.service;

import com.roouty.tms.api.entity.AuthorizationEntity;
import com.roouty.tms.api.model.PaymentReq;
import java.util.Optional;
import javax.validation.Valid;
import javax.validation.constraints.NotNull;

/**
 * @author : github.com/wemeetmobility
 * @project : roouty tms-api
 **/
public interface PaymentService {

  public Optional<AuthorizationEntity> authorize(@Valid PaymentReq paymentReq);
  public Optional<AuthorizationEntity> getOrdersPaymentAuthorization(@NotNull String orderId);
}
