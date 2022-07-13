package com.roouty.tms.api;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.roouty.tms.api.model.SignInReq;
import com.roouty.tms.api.model.SignedInUser;
import org.springframework.boot.test.web.client.TestRestTemplate;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpMethod;
import org.springframework.http.MediaType;

/**
 * @author : github.com/wemeetmobility
 * @project : roouty tms-api
 **/
public class AuthClient {

  private TestRestTemplate restTemplate;
  private ObjectMapper objectMapper;

  public AuthClient(TestRestTemplate restTemplate, ObjectMapper objectMapper) {
    this.restTemplate = restTemplate;
    this.objectMapper = objectMapper;
  }

  public SignedInUser login(String username, String password) {
    SignInReq signInReq = new SignInReq().username(username).password(password);
    return restTemplate
        .execute("/api/v1/auth/token",
            HttpMethod.POST,
            request -> {
              objectMapper.writeValue(request.getBody(), signInReq);
              request.getHeaders().add(HttpHeaders.CONTENT_TYPE, MediaType.APPLICATION_JSON_VALUE);
              request.getHeaders().add(HttpHeaders.ACCEPT, MediaType.APPLICATION_JSON_VALUE);
            },
            response -> objectMapper.readValue(response.getBody(), SignedInUser.class)
        );
  }
}
