BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `User`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `User`
(
	`Id` INT NOT NULL
)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `Resource`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `Resource`
(
	`Id`                 INT NOT NULL,
	`AssociatedObjectId` INT NOT NULL,
	`AssociationTypeId`  INT     NULL
)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `Lookup`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `Lookup`
(
	`Id`   INT           NOT NULL,
	`Type` VARCHAR(4000)     NULL
)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	`t1`.`Id`,
	`t1`.`AssociatedObjectId`,
	`t1`.`AssociationTypeId`,
	`a_User`.`Id`
FROM
	`Resource` `t1`
		LEFT JOIN `Lookup` `a_AssociationTypeCode` ON `t1`.`AssociationTypeId` = `a_AssociationTypeCode`.`Id` AND `t1`.`AssociationTypeId` IS NOT NULL
		LEFT JOIN `User` `a_User` ON `a_AssociationTypeCode`.`Type` = 'us' AND `a_AssociationTypeCode`.`Type` IS NOT NULL AND `a_User`.`Id` = `t1`.`AssociatedObjectId`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `Lookup`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `Resource`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

DROP TABLE IF EXISTS `User`

