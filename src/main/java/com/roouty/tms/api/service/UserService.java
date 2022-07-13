package com.roouty.tms.api.service;

import com.roouty.tms.api.entity.AddressEntity;
import com.roouty.tms.api.entity.CardEntity;
import com.roouty.tms.api.entity.UserEntity;
import com.roouty.tms.api.model.RefreshToken;
import com.roouty.tms.api.model.SignedInUser;
import com.roouty.tms.api.model.User;
import java.util.Optional;

/**
 * @author : github.com/wemeetmobility
 * @project : roouty tms-api
 **/
public interface UserService {

  void deleteCustomerById(String id);

  Optional<Iterable<AddressEntity>> getAddressesByCustomerId(String id);

  Iterable<UserEntity> getAllCustomers();

  Optional<CardEntity> getCardByCustomerId(String id);

  Optional<UserEntity> getCustomerById(String id);

  Optional<SignedInUser> createUser(User user);

  UserEntity findUserByUsername(String username);

  SignedInUser getSignedInUser(UserEntity userEntity);

  Optional<SignedInUser> getAccessToken(RefreshToken refreshToken);

  void removeRefreshToken(RefreshToken refreshToken);
}
