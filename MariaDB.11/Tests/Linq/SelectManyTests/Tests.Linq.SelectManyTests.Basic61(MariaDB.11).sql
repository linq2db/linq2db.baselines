BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	`_`.`ParentID` + 1
FROM
	`Parent` `cp`
		INNER JOIN `Child` `_` ON (`_`.`ParentID` > 0 OR `_`.`ParentID` > 1) AND `cp`.`ParentID` = `_`.`ParentID`
WHERE
	(`_`.`ParentID` > -1 OR `_`.`ParentID` > 2)

