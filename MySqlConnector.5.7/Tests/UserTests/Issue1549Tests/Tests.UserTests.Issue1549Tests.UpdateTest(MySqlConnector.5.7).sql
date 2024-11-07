BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

DROP TABLE IF EXISTS `billing_devtypes`

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

CREATE TABLE IF NOT EXISTS `billing_devtypes`
(
	`devtypeid`  INT         AUTO_INCREMENT NOT NULL,
	`typename`   VARCHAR(50)                NOT NULL,
	`GlobalType` INT                        NOT NULL,

	CONSTRAINT `PK_billing_devtypes` PRIMARY KEY CLUSTERED (`devtypeid`)
)

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

DROP TABLE IF EXISTS `billing_devices`

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

CREATE TABLE IF NOT EXISTS `billing_devices`
(
	`devid`     VARCHAR(50) NOT NULL,
	`sernum`    VARCHAR(50)     NULL,
	`devtypeid` INT         NOT NULL,

	CONSTRAINT `PK_billing_devices` PRIMARY KEY CLUSTERED (`devid`)
)

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

DROP TABLE IF EXISTS `billing_DevReadingType`

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

CREATE TABLE IF NOT EXISTS `billing_DevReadingType`
(
	`Id`             INT         AUTO_INCREMENT NOT NULL,
	`DevTypeId`      INT                        NOT NULL,
	`Name`           VARCHAR(50)                NOT NULL,
	`Responsibility` INT                        NOT NULL,

	CONSTRAINT `PK_billing_DevReadingType` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

DROP TABLE IF EXISTS `billing_TempReading`

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

CREATE TABLE IF NOT EXISTS `billing_TempReading`
(
	`id`               INT             AUTO_INCREMENT NOT NULL,
	`DevSerNum`        VARCHAR(50)                    NOT NULL,
	`devid`            VARCHAR(50)                        NULL,
	`tsdevice`         DATETIME                       NOT NULL,
	`value`            DECIMAL(29, 10)                NOT NULL,
	`Devtypeid`        INT                                NULL,
	`DevReadingTypeId` INT                                NULL,
	`ReadingTypeName`  VARCHAR(50)                        NULL,
	`DevGlobalType`    INT                            NOT NULL,
	`Responsibility`   INT                            NOT NULL,

	CONSTRAINT `PK_billing_TempReading` PRIMARY KEY CLUSTERED (`id`)
)

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

UPDATE
	`billing_TempReading` `tr`
		INNER JOIN `billing_DevReadingType` `drt` ON `drt`.`Name` = `tr`.`ReadingTypeName` AND `drt`.`DevTypeId` = `tr`.`Devtypeid`
SET
	`tr`.`DevReadingTypeId` = `drt`.`Id`,
	`tr`.`Responsibility` = `drt`.`Responsibility`

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

UPDATE
	`billing_TempReading` `t1`
SET
	`t1`.`DevReadingTypeId` = (
		SELECT
			`w`.`Id`
		FROM
			`billing_DevReadingType` `w`
		WHERE
			`w`.`Name` = `t1`.`ReadingTypeName` AND `w`.`DevTypeId` = `t1`.`Devtypeid`
		LIMIT 1
	),
	`t1`.`Responsibility` = (
		SELECT
			`w_1`.`Responsibility`
		FROM
			`billing_DevReadingType` `w_1`
		WHERE
			`w_1`.`Name` = `t1`.`ReadingTypeName` AND `w_1`.`DevTypeId` = `t1`.`Devtypeid`
		LIMIT 1
	)

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

DROP TABLE IF EXISTS `billing_TempReading`

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

DROP TABLE IF EXISTS `billing_DevReadingType`

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

DROP TABLE IF EXISTS `billing_devices`

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

DROP TABLE IF EXISTS `billing_devtypes`

