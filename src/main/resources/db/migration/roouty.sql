create schema if not exists roouty;
use roouty;

CREATE TABLE IF NOT EXISTS `license_info` (
  `id` BINARY(16) NOT NULL,
  `service_begin_at` TIMESTAMP NOT NULL,
  `service_end_at` TIMESTAMP NULL,
  `admin_account_num` TINYINT NULL,
  `vehicle_num` TINYINT NOT NULL,
  `tryout` varchar(10) NULL,
  `updated_at` TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
);

insert into license_info values (UUID_TO_BIN('6d62d909-3333-430e-8689-b5129c0bb75e'), '2022-01-01 00:00:01', '2022-12-31 00:00:01',1,10,'ok',current_timestamp);

CREATE TABLE IF NOT EXISTS `ceo_info` (
  `id` BINARY(16) NOT NULL,
  `name` VARCHAR(16) NOT NULL,
  `email` VARCHAR(45) NOT NULL,
  `admin_id` VARCHAR(45) NOT NULL,
  `phone` VARCHAR(32) NOT NULL,
  `updated_at` TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
  );

insert into ceo_info values (UUID_TO_BIN('6d62d909-4545-430e-8689-b5129c0bb75e'), '풀템님', 'ceo@wholetem.com','tms_admin@wholetem.com','010-333-9999',current_timestamp);
insert into ceo_info values (UUID_TO_BIN('6d62d909-4545-430e-8689-b5129c0bb711'), '강귀선', 'ceo@wemeetmobility.com','tms_admin@wemeetmobility.com','010-123-5555',current_timestamp);


CREATE TABLE IF NOT EXISTS `company` (
  `id` BINARY(16) NOT NULL,
  `company_name` VARCHAR(16) NOT NULL,
  `biz_reg_num` VARCHAR(45) NULL,
  `license_info_id` BINARY(16) NOT NULL,
  `ceo_info_id` BINARY(16) NOT NULL,
  `updated_at` TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
 );

 insert into company values (UUID_TO_BIN('6d62d909-9999-0000-8689-b5129c0bb75e'),'훝템(주)','1111-22-0000',UUID_TO_BIN('6d62d909-4545-430e-8689-b5129c0bb75e'),UUID_TO_BIN('6d62d909-3333-430e-8689-b5129c0bb75e'),current_timestamp);