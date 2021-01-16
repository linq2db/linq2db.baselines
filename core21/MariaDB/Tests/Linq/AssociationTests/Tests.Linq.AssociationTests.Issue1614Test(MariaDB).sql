BeforeExecute
-- MariaDB MySql.Official MySql

CREATE TABLE `User`
(
	`Id` INT NOT NULL
)

BeforeExecute
-- MariaDB MySql.Official MySql

CREATE TABLE `Resource`
(
	`Id`                 INT NOT NULL,
	`AssociatedObjectId` INT NOT NULL,
	`AssociationTypeId`  INT     NULL
)

BeforeExecute
-- MariaDB MySql.Official MySql

CREATE TABLE `Lookup`
(
	`Id`   INT          NOT NULL,
	`Type` VARCHAR(255)     NULL
)

BeforeExecute
-- MariaDB MySql.Official MySql

DROP TABLE `Lookup`

BeforeExecute
-- MariaDB MySql.Official MySql

DROP TABLE `Resource`

BeforeExecute
-- MariaDB MySql.Official MySql

DROP TABLE `User`

