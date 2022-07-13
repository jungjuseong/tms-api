package com.roouty.tms.api.repository;

import com.roouty.tms.api.entity.OrderEntity;
import com.roouty.tms.api.model.NewOrder;
import java.util.Optional;

/**
 * @author : github.com/wemeetmobility
 * @project : roouty tms-api
 **/
public interface OrderRepositoryExt {
  Optional<OrderEntity> insert(NewOrder m);
}
