BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	`cp`.`ParentID`,
	`cp`.`Value1`
FROM
	`Parent` `cp`
		INNER JOIN `Child` `c_1` ON `cp`.`ParentID` = `c_1`.`ParentID`

