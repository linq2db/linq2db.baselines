BeforeExecute
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
	`t2`.`CountCondoCategories`,
	`t1`.`CountCondoTags`,
	`l`.`LocationName`,
	`l`.`Id`
FROM
	`Condos` `c_1`
		INNER JOIN `Locations` `l` ON `c_1`.`LocationId` = `l`.`Id`
		LEFT JOIN (
			SELECT
				`ctleft`.`CondoId` as `subct`,
				Count(*) as `CountCondoTags`
			FROM
				`CondoTags` `ctleft`
			GROUP BY
				`ctleft`.`CondoId`
		) `t1` ON `c_1`.`Id` = `t1`.`subct`
		LEFT JOIN (
			SELECT
				`ccleft`.`CondoId` as `subcc`,
				Count(*) as `CountCondoCategories`
			FROM
				`CategoryCondos` `ccleft`
			GROUP BY
				`ccleft`.`CondoId`
		) `t2` ON `c_1`.`Id` = `t2`.`subcc`

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

