package com.roouty.tms.api.controller;

import static org.springframework.http.ResponseEntity.ok;

import com.roouty.tms.api.ProductApi;
import com.roouty.tms.api.model.Product;
import com.roouty.tms.api.hateoas.ProductRepresentationModelAssembler;
import com.roouty.tms.api.service.ProductService;
import java.util.List;
import javax.validation.Valid;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RestController;

/**
 * @author : github.com/wemeetmobility
 * @project : roouty tms-api
 **/
@RestController
public class ProductController implements ProductApi {

  private ProductService service;
  private final ProductRepresentationModelAssembler assembler;

  public ProductController(ProductService service, ProductRepresentationModelAssembler assembler) {
    this.service = service;
    this.assembler = assembler;
  }

  @Override
  public ResponseEntity<Product> getProduct(String id) {
    return service.getProduct(id).map(assembler::toModel).map(ResponseEntity::ok).orElse(ResponseEntity.notFound().build());
  }

  @Override
  public ResponseEntity<List<Product>> queryProducts(@Valid String tag, @Valid String name,
      @Valid Integer page, @Valid Integer size) {
    return ok(assembler.toListModel(service.getAllProducts()));
  }
}
