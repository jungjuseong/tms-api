package com.roouty.tms.api.service;

import com.roouty.tms.api.entity.ItemEntity;
import com.roouty.tms.api.model.Item;
import java.util.List;

/**
 * @author : github.com/wemeetmobility
 * @project : roouty tms-api
 **/
public interface ItemService {

  ItemEntity toEntity(Item m);

  List<ItemEntity> toEntityList(List<Item> items);

  Item toModel(ItemEntity e);

  List<Item> toModelList(List<ItemEntity> items);
}
