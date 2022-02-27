BeforeExecute
-- MySql MySql.Official MySql

CREATE TABLE `NC_CODE`
(
	`HANDLE`             VARCHAR(255) NOT NULL,
	`CHANGE_STAMP`       DECIMAL          NULL,
	`SITE`               VARCHAR(255)     NULL,
	`NC_CODE`            VARCHAR(255)     NULL,
	`DESCRIPTION`        VARCHAR(255)     NULL,
	`STATUS_BO`          VARCHAR(255)     NULL,
	`CREATED_DATE_TIME`  DATETIME         NULL,
	`MODIFIED_DATE_TIME` DATETIME         NULL,
	`NC_CATEGORY`        VARCHAR(255)     NULL,
	`DPMO_CATEGORY_BO`   VARCHAR(255)     NULL
)

BeforeExecute
-- MySql MySql.Official MySql

CREATE TABLE `NC_GROUP_MEMBER`
(
	`HANDLE`               VARCHAR(255) NOT NULL,
	`NC_GROUP_BO`          VARCHAR(255)     NULL,
	`NC_CODE_OR_GROUP_GBO` VARCHAR(255)     NULL,
	`SEQUENCE`             DECIMAL          NULL
)

BeforeExecute
-- MySql MySql.Official MySql

DROP TABLE `NC_GROUP_MEMBER`

BeforeExecute
-- MySql MySql.Official MySql

DROP TABLE `NC_CODE`

