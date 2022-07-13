package com.roouty.tms.api.service;

import com.roouty.tms.api.entity.CardEntity;
import com.roouty.tms.api.model.AddCardReq;
import java.util.Optional;
import javax.validation.Valid;

/**
 * @author : github.com/wemeetmobility
 * @project : roouty tms-api
 **/
public interface CardService {
  public void deleteCardById(String id);
  public Iterable<CardEntity> getAllCards();
  public Optional<CardEntity> getCardById(String id);
  public Optional<CardEntity> registerCard(@Valid AddCardReq addCardReq);
}
