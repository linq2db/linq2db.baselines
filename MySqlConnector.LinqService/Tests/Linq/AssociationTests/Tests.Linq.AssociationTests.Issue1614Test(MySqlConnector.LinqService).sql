﻿BeforeExecute
-- MySqlConnector MySql

DROP TABLE IF EXISTS `User`

BeforeExecute
-- MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `User`
(
	`Id` INT NOT NULL
)

BeforeExecute
-- MySqlConnector MySql

DROP TABLE IF EXISTS `Resource`

BeforeExecute
-- MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `Resource`
(
	`Id`                 INT NOT NULL,
	`AssociatedObjectId` INT NOT NULL,
	`AssociationTypeId`  INT     NULL
)

BeforeExecute
-- MySqlConnector MySql

DROP TABLE IF EXISTS `Lookup`

BeforeExecute
-- MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `Lookup`
(
	`Id`   INT           NOT NULL,
	`Type` VARCHAR(4000)     NULL
)

BeforeExecute
-- MySqlConnector MySql

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
-- MySqlConnector MySql

DROP TABLE IF EXISTS `Lookup`

BeforeExecute
-- MySqlConnector MySql

DROP TABLE IF EXISTS `Resource`

BeforeExecute
-- MySqlConnector MySql

DROP TABLE IF EXISTS `User`

