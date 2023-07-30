BeforeExecute
-- MariaDB MySqlConnector MySql

DROP TABLE IF EXISTS `TempTable`

BeforeExecute
-- MariaDB MySqlConnector MySql

CREATE TABLE IF NOT EXISTS `TempTable`
(
	`ID` INT NOT NULL
)

BeforeExecute
-- MariaDB MySqlConnector MySql

INSERT INTO `TempTable`
(
	`ID`
)
SELECT
	`p`.`ParentID`
FROM
	`Parent` `p`

BeforeExecute
-- MariaDB MySqlConnector MySql

SELECT
	`t1`.`ID`
FROM
	`TempTable` `t1`

BeforeExecute
-- MariaDB MySqlConnector MySql

SELECT
	`t`.`ID`
FROM
	`Parent` `p`
		INNER JOIN `TempTable` `t` ON `p`.`ParentID` = `t`.`ID`

BeforeExecute
-- MariaDB MySqlConnector MySql

DROP TABLE IF EXISTS `TempTable`

