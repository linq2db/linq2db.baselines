BeforeExecute
-- MySql MySql.Official MySql

DROP TABLE IF EXISTS `Condos`

BeforeExecute
-- MySql MySql.Official MySql

CREATE TABLE IF NOT EXISTS `Condos`
(
	`Id`         INT NOT NULL,
	`LocationId` INT NOT NULL,

	CONSTRAINT `PK_Condos` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MySql MySql.Official MySql

DROP TABLE IF EXISTS `CategoryCondos`

BeforeExecute
-- MySql MySql.Official MySql

CREATE TABLE IF NOT EXISTS `CategoryCondos`
(
	`CategoryId` INT NOT NULL,
	`CondoId`    INT NOT NULL,

	CONSTRAINT `PK_CategoryCondos` PRIMARY KEY CLUSTERED (`CategoryId`, `CondoId`)
)

BeforeExecute
-- MySql MySql.Official MySql

DROP TABLE IF EXISTS `CondoTags`

BeforeExecute
-- MySql MySql.Official MySql

CREATE TABLE IF NOT EXISTS `CondoTags`
(
	`CondoId` INT NOT NULL,
	`TagId`   INT NOT NULL,

	CONSTRAINT `PK_CondoTags` PRIMARY KEY CLUSTERED (`CondoId`, `TagId`)
)

BeforeExecute
-- MySql MySql.Official MySql

DROP TABLE IF EXISTS `Locations`

BeforeExecute
-- MySql MySql.Official MySql

CREATE TABLE IF NOT EXISTS `Locations`
(
	`Id`           INT          NOT NULL,
	`LocationName` VARCHAR(100) NOT NULL,

	CONSTRAINT `PK_Locations` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MySql MySql.Official MySql

SELECT
	`c_1`.`Id`,
	`c_1`.`LocationId`,
	`t4`.`CountCondoCategories`,
	`t2`.`CountCondoTags`,
	`l`.`LocationName`,
	`l`.`Id`
FROM
	`Condos` `c_1`
		INNER JOIN `Locations` `l` ON `c_1`.`LocationId` = `l`.`Id`
		LEFT JOIN (
			SELECT
				`ctleft`.`CondoId` as `subct`,
				`ctleft`.`CountCondoTags`
			FROM
				(
					SELECT
						`t1`.`CondoId`,
						Count(*) as `CountCondoTags`
					FROM
						`CondoTags` `t1`
					GROUP BY
						`t1`.`CondoId`
				) `ctleft`
		) `t2` ON `c_1`.`Id` = `t2`.`subct`
		LEFT JOIN (
			SELECT
				`ccleft`.`CondoId` as `subcc`,
				`ccleft`.`CountCondoCategories`
			FROM
				(
					SELECT
						`t3`.`CondoId`,
						Count(*) as `CountCondoCategories`
					FROM
						`CategoryCondos` `t3`
					GROUP BY
						`t3`.`CondoId`
				) `ccleft`
		) `t4` ON `c_1`.`Id` = `t4`.`subcc`

BeforeExecute
-- MySql MySql.Official MySql

DROP TABLE IF EXISTS `Locations`

BeforeExecute
-- MySql MySql.Official MySql

DROP TABLE IF EXISTS `CondoTags`

BeforeExecute
-- MySql MySql.Official MySql

DROP TABLE IF EXISTS `CategoryCondos`

BeforeExecute
-- MySql MySql.Official MySql

DROP TABLE IF EXISTS `Condos`

