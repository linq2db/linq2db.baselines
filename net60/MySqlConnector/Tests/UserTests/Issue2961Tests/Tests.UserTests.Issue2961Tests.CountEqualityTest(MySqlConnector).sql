﻿BeforeExecute
-- MySqlConnector MySql

DROP TABLE IF EXISTS `Condos`

BeforeExecute
-- MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `Condos`
(
	`Id`         INT NOT NULL,
	`LocationId` INT NOT NULL,

	CONSTRAINT `PK_Condos` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MySqlConnector MySql

DROP TABLE IF EXISTS `CategoryCondos`

BeforeExecute
-- MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `CategoryCondos`
(
	`CategoryId` INT NOT NULL,
	`CondoId`    INT NOT NULL,

	CONSTRAINT `PK_CategoryCondos` PRIMARY KEY CLUSTERED (`CategoryId`, `CondoId`)
)

BeforeExecute
-- MySqlConnector MySql

DROP TABLE IF EXISTS `CondoTags`

BeforeExecute
-- MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `CondoTags`
(
	`CondoId` INT NOT NULL,
	`TagId`   INT NOT NULL,

	CONSTRAINT `PK_CondoTags` PRIMARY KEY CLUSTERED (`CondoId`, `TagId`)
)

BeforeExecute
-- MySqlConnector MySql

DROP TABLE IF EXISTS `Locations`

BeforeExecute
-- MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `Locations`
(
	`Id`           INT          NOT NULL,
	`LocationName` VARCHAR(100) NOT NULL,

	CONSTRAINT `PK_Locations` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MySqlConnector MySql

SELECT
	`c_1`.`Id`,
	`c_1`.`LocationId`,
	`ccleft`.`CountCondoCategories`,
	`ctleft`.`CountCondoTags`,
	`l`.`LocationName`,
	`l`.`Id`
FROM
	`Condos` `c_1`
		INNER JOIN `Locations` `l` ON `c_1`.`LocationId` = `l`.`Id`
		LEFT JOIN (
			SELECT
				`t1`.`CondoId`,
				Count(*) as `CountCondoTags`
			FROM
				`CondoTags` `t1`
			GROUP BY
				`t1`.`CondoId`
		) `ctleft` ON `c_1`.`Id` = `ctleft`.`CondoId`
		LEFT JOIN (
			SELECT
				`t2`.`CondoId`,
				Count(*) as `CountCondoCategories`
			FROM
				`CategoryCondos` `t2`
			GROUP BY
				`t2`.`CondoId`
		) `ccleft` ON `c_1`.`Id` = `ccleft`.`CondoId`

BeforeExecute
-- MySqlConnector MySql

DROP TABLE IF EXISTS `Locations`

BeforeExecute
-- MySqlConnector MySql

DROP TABLE IF EXISTS `CondoTags`

BeforeExecute
-- MySqlConnector MySql

DROP TABLE IF EXISTS `CategoryCondos`

BeforeExecute
-- MySqlConnector MySql

DROP TABLE IF EXISTS `Condos`

