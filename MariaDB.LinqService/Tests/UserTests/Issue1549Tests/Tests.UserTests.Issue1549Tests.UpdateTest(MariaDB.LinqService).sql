BeforeExecute
-- MariaDB MySqlConnector MySql

DROP TABLE IF EXISTS `billing_devtypes`

BeforeExecute
-- MariaDB MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `billing_devtypes`
(
	`devtypeid`  INT         AUTO_INCREMENT NOT NULL,
	`typename`   VARCHAR(50)                NOT NULL,
	`GlobalType` INT                        NOT NULL,

	CONSTRAINT `PK_billing_devtypes` PRIMARY KEY CLUSTERED (`devtypeid`)
)

BeforeExecute
-- MariaDB MySqlConnector MySql

DROP TABLE IF EXISTS `billing_devices`

BeforeExecute
-- MariaDB MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `billing_devices`
(
	`devid`     VARCHAR(50) NOT NULL,
	`sernum`    VARCHAR(50)     NULL,
	`devtypeid` INT         NOT NULL,

	CONSTRAINT `PK_billing_devices` PRIMARY KEY CLUSTERED (`devid`)
)

BeforeExecute
-- MariaDB MySqlConnector MySql

DROP TABLE IF EXISTS `billing_DevReadingType`

BeforeExecute
-- MariaDB MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `billing_DevReadingType`
(
	`Id`             INT         AUTO_INCREMENT NOT NULL,
	`DevTypeId`      INT                        NOT NULL,
	`Name`           VARCHAR(50)                NOT NULL,
	`Responsibility` INT                        NOT NULL,

	CONSTRAINT `PK_billing_DevReadingType` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MariaDB MySqlConnector MySql

DROP TABLE IF EXISTS `billing_TempReading`

BeforeExecute
-- MariaDB MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `billing_TempReading`
(
	`id`               INT         AUTO_INCREMENT NOT NULL,
	`DevSerNum`        VARCHAR(50)                NOT NULL,
	`devid`            VARCHAR(50)                    NULL,
	`tsdevice`         DATETIME                   NOT NULL,
	`value`            DECIMAL                    NOT NULL,
	`Devtypeid`        INT                            NULL,
	`DevReadingTypeId` INT                            NULL,
	`ReadingTypeName`  VARCHAR(50)                    NULL,
	`DevGlobalType`    INT                        NOT NULL,
	`Responsibility`   INT                        NOT NULL,

	CONSTRAINT `PK_billing_TempReading` PRIMARY KEY CLUSTERED (`id`)
)

BeforeExecute
-- MariaDB MySqlConnector MySql

UPDATE
	`billing_TempReading` `tr`
		INNER JOIN `billing_DevReadingType` `drt` ON `drt`.`Name` = `tr`.`ReadingTypeName` AND `drt`.`DevTypeId` = `tr`.`Devtypeid`
SET
	`tr`.`DevReadingTypeId` = `drt`.`Id`,
	`tr`.`Responsibility` = `drt`.`Responsibility`

BeforeExecute
-- MariaDB MySqlConnector MySql

UPDATE
	`billing_TempReading` `t3`
		LEFT JOIN (
			SELECT
				`w`.`Id`,
				ROW_NUMBER() OVER (PARTITION BY `w`.`Name`, `w`.`DevTypeId` ORDER BY `w`.`Name`) as `rn`,
				`w`.`Name`,
				`w`.`DevTypeId`
			FROM
				`billing_DevReadingType` `w`
		) `t1` ON (`t1`.`Name` = `t3`.`ReadingTypeName` OR `t1`.`Name` IS NULL AND `t3`.`ReadingTypeName` IS NULL) AND (`t1`.`DevTypeId` = `t3`.`Devtypeid` OR `t1`.`DevTypeId` IS NULL AND `t3`.`Devtypeid` IS NULL) AND `t1`.`rn` <= 1
		LEFT JOIN (
			SELECT
				`w_1`.`Responsibility`,
				ROW_NUMBER() OVER (PARTITION BY `w_1`.`Name`, `w_1`.`DevTypeId` ORDER BY `w_1`.`Name`) as `rn`,
				`w_1`.`Name`,
				`w_1`.`DevTypeId`
			FROM
				`billing_DevReadingType` `w_1`
		) `t2` ON (`t2`.`Name` = `t3`.`ReadingTypeName` OR `t2`.`Name` IS NULL AND `t3`.`ReadingTypeName` IS NULL) AND (`t2`.`DevTypeId` = `t3`.`Devtypeid` OR `t2`.`DevTypeId` IS NULL AND `t3`.`Devtypeid` IS NULL) AND `t2`.`rn` <= 1
SET
	`t3`.`DevReadingTypeId` = `t1`.`Id`,
	`t3`.`Responsibility` = `t2`.`Responsibility`

BeforeExecute
-- MariaDB MySqlConnector MySql

DROP TABLE IF EXISTS `billing_TempReading`

BeforeExecute
-- MariaDB MySqlConnector MySql

DROP TABLE IF EXISTS `billing_DevReadingType`

BeforeExecute
-- MariaDB MySqlConnector MySql

DROP TABLE IF EXISTS `billing_devices`

BeforeExecute
-- MariaDB MySqlConnector MySql

DROP TABLE IF EXISTS `billing_devtypes`

