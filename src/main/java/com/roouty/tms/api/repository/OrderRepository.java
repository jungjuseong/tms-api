package com.roouty.tms.api.repository;

import com.roouty.tms.api.entity.OrderEntity;
import java.util.UUID;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

/**
 * @author : github.com/wemeetmobility
 * @project : roouty tms-api
 **/
@Repository
public interface OrderRepository extends CrudRepository<OrderEntity, UUID>, OrderRepositoryExt {

  @Query("select o from OrderEntity o join o.userEntity u where u.id = :customerId")
  Iterable<OrderEntity> findByCustomerId(@Param("customerId") UUID customerId);
}
