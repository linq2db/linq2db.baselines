﻿BeforeExecute
-- MySqlConnector MySql

DROP TABLE IF EXISTS `NC_CODE`

BeforeExecute
-- MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `NC_CODE`
(
	`HANDLE`             VARCHAR(4000)   NOT NULL,
	`CHANGE_STAMP`       DECIMAL(29, 10)     NULL,
	`SITE`               VARCHAR(18)         NULL,
	`NC_CODE`            VARCHAR(48)         NULL,
	`DESCRIPTION`        VARCHAR(120)        NULL,
	`STATUS_BO`          VARCHAR(4000)       NULL,
	`CREATED_DATE_TIME`  DATETIME            NULL,
	`MODIFIED_DATE_TIME` DATETIME            NULL,
	`NC_CATEGORY`        VARCHAR(4000)       NULL,
	`DPMO_CATEGORY_BO`   VARCHAR(4000)       NULL
)

BeforeExecute
-- MySqlConnector MySql

DROP TABLE IF EXISTS `NC_GROUP_MEMBER`

BeforeExecute
-- MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `NC_GROUP_MEMBER`
(
	`HANDLE`               VARCHAR(4000)   NOT NULL,
	`NC_GROUP_BO`          VARCHAR(4000)       NULL,
	`NC_CODE_OR_GROUP_GBO` VARCHAR(4000)       NULL,
	`SEQUENCE`             DECIMAL(29, 10)     NULL
)

BeforeExecute
-- MySqlConnector MySql

DROP TABLE IF EXISTS `NC_GROUP_MEMBER`

BeforeExecute
-- MySqlConnector MySql

DROP TABLE IF EXISTS `NC_CODE`

