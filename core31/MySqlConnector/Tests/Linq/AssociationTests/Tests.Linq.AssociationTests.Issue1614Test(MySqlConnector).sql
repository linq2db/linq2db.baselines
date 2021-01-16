BeforeExecute
-- MySqlConnector MySql

CREATE TABLE `User`
(
	`Id` INT NOT NULL
)

BeforeExecute
-- MySqlConnector MySql

CREATE TABLE `Resource`
(
	`Id`                 INT NOT NULL,
	`AssociatedObjectId` INT NOT NULL,
	`AssociationTypeId`  INT     NULL
)

BeforeExecute
-- MySqlConnector MySql

CREATE TABLE `Lookup`
(
	`Id`   INT          NOT NULL,
	`Type` VARCHAR(255)     NULL
)

BeforeExecute
-- MySqlConnector MySql

DROP TABLE `Lookup`

BeforeExecute
-- MySqlConnector MySql

DROP TABLE `Resource`

BeforeExecute
-- MySqlConnector MySql

DROP TABLE `User`

