package com.roouty.tms.api.service;

import com.roouty.tms.api.entity.OrderEntity;
import com.roouty.tms.api.model.NewOrder;
import java.util.Optional;
import javax.validation.Valid;
import javax.validation.constraints.NotNull;

/**
 * @author : github.com/wemeetmobility
 * @project : roouty tms-api
 **/
public interface OrderService {

  public Optional<OrderEntity> addOrder(@Valid NewOrder newOrder);
  public Iterable<OrderEntity> getOrdersByCustomerId(@NotNull @Valid String customerId);
  public Optional<OrderEntity> getByOrderId(String id);
}
