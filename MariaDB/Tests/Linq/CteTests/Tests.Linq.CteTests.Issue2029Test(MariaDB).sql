BeforeExecute
-- MariaDB MySqlConnector MySql

DROP TABLE IF EXISTS `NC_CODE`

BeforeExecute
-- MariaDB MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `NC_CODE`
(
	`HANDLE`             VARCHAR(4000) NOT NULL,
	`CHANGE_STAMP`       DECIMAL           NULL,
	`SITE`               VARCHAR(18)       NULL,
	`NC_CODE`            VARCHAR(48)       NULL,
	`DESCRIPTION`        VARCHAR(120)      NULL,
	`STATUS_BO`          VARCHAR(4000)     NULL,
	`CREATED_DATE_TIME`  DATETIME          NULL,
	`MODIFIED_DATE_TIME` DATETIME          NULL,
	`NC_CATEGORY`        VARCHAR(4000)     NULL,
	`DPMO_CATEGORY_BO`   VARCHAR(4000)     NULL
)

BeforeExecute
-- MariaDB MySqlConnector MySql

DROP TABLE IF EXISTS `NC_GROUP_MEMBER`

BeforeExecute
-- MariaDB MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `NC_GROUP_MEMBER`
(
	`HANDLE`               VARCHAR(4000) NOT NULL,
	`NC_GROUP_BO`          VARCHAR(4000)     NULL,
	`NC_CODE_OR_GROUP_GBO` VARCHAR(4000)     NULL,
	`SEQUENCE`             DECIMAL           NULL
)

BeforeExecute
-- MariaDB MySqlConnector MySql

DROP TABLE IF EXISTS `NC_GROUP_MEMBER`

BeforeExecute
-- MariaDB MySqlConnector MySql

DROP TABLE IF EXISTS `NC_CODE`

