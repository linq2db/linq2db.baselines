﻿BeforeExecute
-- MariaDB MySqlConnector MySql

CREATE TABLE `User`
(
	`Id` INT NOT NULL
)

BeforeExecute
-- MariaDB MySqlConnector MySql

CREATE TABLE `Resource`
(
	`Id`                 INT NOT NULL,
	`AssociatedObjectId` INT NOT NULL,
	`AssociationTypeId`  INT     NULL
)

BeforeExecute
-- MariaDB MySqlConnector MySql

CREATE TABLE `Lookup`
(
	`Id`   INT          NOT NULL,
	`Type` VARCHAR(255)     NULL
)

BeforeExecute
-- MariaDB MySqlConnector MySql

SELECT
	`t1`.`Id`,
	`t1`.`AssociatedObjectId`,
	`t1`.`AssociationTypeId`,
	`c_1`.`Id`
FROM
	`Resource` `t1`
		LEFT JOIN `Lookup` `a_AssociationTypeCode` ON `t1`.`AssociationTypeId` = `a_AssociationTypeCode`.`Id`
		LEFT JOIN `User` `c_1` ON `a_AssociationTypeCode`.`Type` = 'us' AND `c_1`.`Id` = `t1`.`AssociatedObjectId`

BeforeExecute
-- MariaDB MySqlConnector MySql

DROP TABLE IF EXISTS `Lookup`

BeforeExecute
-- MariaDB MySqlConnector MySql

DROP TABLE IF EXISTS `Resource`

BeforeExecute
-- MariaDB MySqlConnector MySql

DROP TABLE IF EXISTS `User`

