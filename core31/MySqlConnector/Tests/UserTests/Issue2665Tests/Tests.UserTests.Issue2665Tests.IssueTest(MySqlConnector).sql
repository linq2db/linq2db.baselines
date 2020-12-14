BeforeExecute
-- MySqlConnector MySql

CREATE TABLE `ProductTable`
(
	`Id`   INT          NOT NULL,
	`Name` VARCHAR(255) NOT NULL,

	CONSTRAINT `PK_ProductTable` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MySqlConnector MySql

CREATE TABLE `ProductAttributeTable`
(
	`Id`   INT          NOT NULL,
	`Name` VARCHAR(255) NOT NULL,

	CONSTRAINT `PK_ProductAttributeTable` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MySqlConnector MySql

CREATE TABLE `ProductAttributeMapping`
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
-- MySqlConnector MySql

DROP TABLE `ProductAttributeMapping`

BeforeExecute
-- MySqlConnector MySql

DROP TABLE `ProductAttributeTable`

BeforeExecute
-- MySqlConnector MySql

DROP TABLE `ProductTable`

