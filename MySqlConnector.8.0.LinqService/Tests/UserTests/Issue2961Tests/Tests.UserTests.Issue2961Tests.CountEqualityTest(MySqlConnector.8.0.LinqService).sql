BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

DROP TABLE IF EXISTS `Condos`

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

CREATE TABLE IF NOT EXISTS `Condos`
(
	`Id`         INT NOT NULL,
	`LocationId` INT NOT NULL,

	CONSTRAINT `PK_Condos` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

DROP TABLE IF EXISTS `CategoryCondos`

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

CREATE TABLE IF NOT EXISTS `CategoryCondos`
(
	`CategoryId` INT NOT NULL,
	`CondoId`    INT NOT NULL,

	CONSTRAINT `PK_CategoryCondos` PRIMARY KEY CLUSTERED (`CategoryId`, `CondoId`)
)

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

DROP TABLE IF EXISTS `CondoTags`

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

CREATE TABLE IF NOT EXISTS `CondoTags`
(
	`CondoId` INT NOT NULL,
	`TagId`   INT NOT NULL,

	CONSTRAINT `PK_CondoTags` PRIMARY KEY CLUSTERED (`CondoId`, `TagId`)
)

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

DROP TABLE IF EXISTS `Locations`

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

CREATE TABLE IF NOT EXISTS `Locations`
(
	`Id`           INT          NOT NULL,
	`LocationName` VARCHAR(100) NOT NULL,

	CONSTRAINT `PK_Locations` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`c_1`.`Id`,
	`c_1`.`LocationId`,
	`subcc`.`CountCondoCategories`,
	`subct`.`CountCondoTags`,
	`l`.`LocationName`,
	`l`.`Id`
FROM
	`Condos` `c_1`
		INNER JOIN `Locations` `l` ON `c_1`.`LocationId` = `l`.`Id`
		LEFT JOIN (
			SELECT
				`g2`.`CondoId` as `Key_1`,
				COUNT(*) as `CountCondoTags`
			FROM
				`CondoTags` `g2`
			GROUP BY
				`g2`.`CondoId`
		) `subct` ON `c_1`.`Id` = `subct`.`Key_1`
		LEFT JOIN (
			SELECT
				`g1`.`CondoId` as `Key_1`,
				COUNT(*) as `CountCondoCategories`
			FROM
				`CategoryCondos` `g1`
			GROUP BY
				`g1`.`CondoId`
		) `subcc` ON `c_1`.`Id` = `subcc`.`Key_1`

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

DROP TABLE IF EXISTS `Locations`

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

DROP TABLE IF EXISTS `CondoTags`

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

DROP TABLE IF EXISTS `CategoryCondos`

BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

DROP TABLE IF EXISTS `Condos`

