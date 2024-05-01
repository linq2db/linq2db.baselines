BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	`t`.`ParentID` + `p`.`ParentID`
FROM
	`Child` `t`
		INNER JOIN `Parent` `p` ON `t`.`ParentID` = `p`.`ParentID`
WHERE
	`t`.`ParentID` + `p`.`ParentID` > 2

