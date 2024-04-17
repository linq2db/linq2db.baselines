BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	`_`.`ParentID` + `cp`.`ParentID`
FROM
	`Parent` `cp`
		CROSS JOIN `Child` `_`
WHERE
	`_`.`ParentID` + `cp`.`ParentID` > 1 AND `cp`.`ParentID` = `_`.`ParentID`

