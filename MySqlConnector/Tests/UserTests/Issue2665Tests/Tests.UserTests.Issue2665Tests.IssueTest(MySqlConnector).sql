﻿BeforeExecute
-- MySqlConnector MySql

DROP TABLE IF EXISTS `ProductTable`

BeforeExecute
-- MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `ProductTable`
(
	`Id`   INT           NOT NULL,
	`Name` VARCHAR(4000) NOT NULL,

	CONSTRAINT `PK_ProductTable` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MySqlConnector MySql

DROP TABLE IF EXISTS `ProductAttributeTable`

BeforeExecute
-- MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `ProductAttributeTable`
(
	`Id`   INT           NOT NULL,
	`Name` VARCHAR(4000) NOT NULL,

	CONSTRAINT `PK_ProductAttributeTable` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MySqlConnector MySql

DROP TABLE IF EXISTS `ProductAttributeMapping`

BeforeExecute
-- MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `ProductAttributeMapping`
(
	`ProductId`          INT NOT NULL,
	`ProductAttributeId` INT NOT NULL,

	CONSTRAINT `PK_ProductAttributeMapping` PRIMARY KEY CLUSTERED (`ProductId`, `ProductAttributeId`)
)

BeforeExecute
-- MySqlConnector MySql

SELECT
	`pa`.`Id`
FROM
	`ProductAttributeMapping` `pam`
		INNER JOIN `ProductAttributeTable` `pa` ON `pam`.`ProductAttributeId` = `pa`.`Id`
WHERE
	EXISTS(
		SELECT
			*
		FROM
			(
				SELECT
					`groupedProduct`.`Id`
				FROM
					`ProductTable` `groupedProduct`
						INNER JOIN `ProductAttributeMapping` `pam_1` ON `groupedProduct`.`Id` = `pam_1`.`ProductId`
				GROUP BY
					`groupedProduct`.`Id`
				HAVING
					Count(*) = 1
			) `p`
		WHERE
			`p`.`Id` >= `pam`.`ProductId`
	)

BeforeExecute
-- MySqlConnector MySql

DROP TABLE IF EXISTS `ProductAttributeMapping`

BeforeExecute
-- MySqlConnector MySql

DROP TABLE IF EXISTS `ProductAttributeTable`

BeforeExecute
-- MySqlConnector MySql

DROP TABLE IF EXISTS `ProductTable`

