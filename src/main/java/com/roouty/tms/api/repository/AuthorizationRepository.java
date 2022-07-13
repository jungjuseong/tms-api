package com.roouty.tms.api.repository;

import com.roouty.tms.api.entity.AuthorizationEntity;
import java.util.UUID;

import org.springframework.data.repository.CrudRepository;

/**
 * @author : github.com/wemeetmobility
 * @project : roouty tms-api
 **/
public interface AuthorizationRepository extends CrudRepository<AuthorizationEntity, UUID> {
}
