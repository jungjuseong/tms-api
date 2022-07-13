package com.roouty.tms.api.service;

import com.roouty.tms.api.entity.CartEntity;
import com.roouty.tms.api.model.Item;
import java.util.List;
import javax.validation.Valid;

/**
 * @author : github.com/wemeetmobility
 * @project : roouty tms-api
 **/
public interface CartService {

  public List<Item> addCartItemsByCustomerId(String customerId, @Valid Item item);

  public List<Item> addOrReplaceItemsByCustomerId(String customerId, @Valid Item item);

  public void deleteCart(String customerId);

  public void deleteItemFromCart(String customerId, String itemId);

  public CartEntity getCartByCustomerId(String customerId);

  public List<Item> getCartItemsByCustomerId(String customerId);

  public Item getCartItemsByItemId(String customerId, String itemId);
}
