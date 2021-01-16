BeforeExecute
-- MySql55 MySql.Official MySql

CREATE TABLE `User`
(
	`Id` INT NOT NULL
)

BeforeExecute
-- MySql55 MySql.Official MySql

CREATE TABLE `Resource`
(
	`Id`                 INT NOT NULL,
	`AssociatedObjectId` INT NOT NULL,
	`AssociationTypeId`  INT     NULL
)

BeforeExecute
-- MySql55 MySql.Official MySql

CREATE TABLE `Lookup`
(
	`Id`   INT          NOT NULL,
	`Type` VARCHAR(255)     NULL
)

BeforeExecute
-- MySql55 MySql.Official MySql

DROP TABLE `Lookup`

BeforeExecute
-- MySql55 MySql.Official MySql

DROP TABLE `Resource`

BeforeExecute
-- MySql55 MySql.Official MySql

DROP TABLE `User`

