package com.roouty.tms.api.service;

import com.roouty.tms.api.entity.AddressEntity;
import com.roouty.tms.api.model.AddAddressReq;
import java.util.Optional;

/**
 * @author : github.com/wemeetmobility
 * @project : roouty tms-api
 **/
public interface AddressService {
  public Optional<AddressEntity> createAddress(AddAddressReq addAddressReq);
  public void deleteAddressesById(String id);
  public Optional<AddressEntity> getAddressesById(String id);
  public Iterable<AddressEntity> getAllAddresses();
}
