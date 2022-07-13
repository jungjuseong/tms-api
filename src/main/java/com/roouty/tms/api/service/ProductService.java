package com.roouty.tms.api.service;

import com.roouty.tms.api.entity.ProductEntity;
import java.util.Optional;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotNull;
import org.springframework.validation.annotation.Validated;

/**
 * @author : github.com/wemeetmobility
 * @project : roouty tms-api
 **/
@Validated
public interface ProductService {
  @NotNull Iterable<ProductEntity> getAllProducts();
  Optional<ProductEntity> getProduct(@Min(value = 1L, message = "Invalid product ID.") String id);
}
