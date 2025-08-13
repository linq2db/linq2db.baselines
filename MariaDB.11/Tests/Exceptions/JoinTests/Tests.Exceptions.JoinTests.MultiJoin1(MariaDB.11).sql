BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	`c1`.`ChildID`,
	`c2`.`ParentID`
FROM
	`Parent` `p`
		INNER JOIN `Child` `c1` ON `p`.`ParentID` = `c1`.`ParentID`
		INNER JOIN `Child` `c2` ON `p`.`ParentID` = `c2`.`ParentID`

