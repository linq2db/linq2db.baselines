BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	`_`.`ParentID` + 1
FROM
	`Parent` `cp`
		INNER JOIN `Child` `_` ON `cp`.`ParentID` = `_`.`ParentID` + 1

