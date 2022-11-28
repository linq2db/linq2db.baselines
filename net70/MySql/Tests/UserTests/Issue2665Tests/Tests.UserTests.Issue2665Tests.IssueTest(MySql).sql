BeforeExecute
-- MySql MySql.Official MySql

DROP TABLE IF EXISTS `ProductTable`

BeforeExecute
-- MySql MySql.Official MySql

CREATE TABLE IF NOT EXISTS `ProductTable`
(
	`Id`   INT           NOT NULL,
	`Name` VARCHAR(4000) NOT NULL,

	CONSTRAINT `PK_ProductTable` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MySql MySql.Official MySql

DROP TABLE IF EXISTS `ProductAttributeTable`

BeforeExecute
-- MySql MySql.Official MySql

CREATE TABLE IF NOT EXISTS `ProductAttributeTable`
(
	`Id`   INT           NOT NULL,
	`Name` VARCHAR(4000) NOT NULL,

	CONSTRAINT `PK_ProductAttributeTable` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MySql MySql.Official MySql

DROP TABLE IF EXISTS `ProductAttributeMapping`

BeforeExecute
-- MySql MySql.Official MySql

CREATE TABLE IF NOT EXISTS `ProductAttributeMapping`
(
	`ProductId`          INT NOT NULL,
	`ProductAttributeId` INT NOT NULL,

	CONSTRAINT `PK_ProductAttributeMapping` PRIMARY KEY CLUSTERED (`ProductId`, `ProductAttributeId`)
)

BeforeExecute
-- MySql MySql.Official MySql

SELECT
	`pa`.`Id`
FROM
	`ProductAttributeMapping` `pam`
		INNER JOIN `ProductAttributeTable` `pa` ON `pam`.`ProductAttributeId` = `pa`.`Id`
WHERE
	EXISTS(
		SELECT
			`p`.`Id`
		FROM
			`ProductTable` `p`
				INNER JOIN `ProductAttributeMapping` `pam_1` ON `p`.`Id` = `pam_1`.`ProductId`
		WHERE
			`p`.`Id` >= `pam`.`ProductId`
		GROUP BY
			`p`.`Id`
		HAVING
			Count(*) = 1
	)

BeforeExecute
-- MySql MySql.Official MySql

DROP TABLE IF EXISTS `ProductAttributeMapping`

BeforeExecute
-- MySql MySql.Official MySql

DROP TABLE IF EXISTS `ProductAttributeTable`

BeforeExecute
-- MySql MySql.Official MySql

DROP TABLE IF EXISTS `ProductTable`

