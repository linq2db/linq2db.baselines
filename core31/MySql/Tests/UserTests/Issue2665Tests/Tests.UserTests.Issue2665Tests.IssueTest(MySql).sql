BeforeExecute
-- MySql MySql.Official MySql

CREATE TABLE `ProductTable`
(
	`Id`   INT          NOT NULL,
	`Name` VARCHAR(255) NOT NULL,

	CONSTRAINT `PK_ProductTable` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MySql MySql.Official MySql

CREATE TABLE `ProductAttributeTable`
(
	`Id`   INT          NOT NULL,
	`Name` VARCHAR(255) NOT NULL,

	CONSTRAINT `PK_ProductAttributeTable` PRIMARY KEY CLUSTERED (`Id`)
)

BeforeExecute
-- MySql MySql.Official MySql

CREATE TABLE `ProductAttributeMapping`
(
	`ProductId`          INT NOT NULL,
	`ProductAttributeId` INT NOT NULL,

	CONSTRAINT `PK_ProductAttributeMapping` PRIMARY KEY CLUSTERED (`ProductId`, `ProductAttributeId`)
)

BeforeExecute
-- MySql MySql.Official MySql

DROP TABLE `ProductAttributeMapping`

BeforeExecute
-- MySql MySql.Official MySql

DROP TABLE `ProductAttributeTable`

BeforeExecute
-- MySql MySql.Official MySql

DROP TABLE `ProductTable`

