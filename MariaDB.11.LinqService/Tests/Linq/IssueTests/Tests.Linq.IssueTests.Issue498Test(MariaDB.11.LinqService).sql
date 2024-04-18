BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	`x`.`ParentID`,
	Count(*)
FROM
	`Child` `x`
		INNER JOIN `GrandChild` `y` ON `x`.`ParentID` = `y`.`ParentID` AND `x`.`ChildID` = `y`.`ChildID`
GROUP BY
	`x`.`ParentID`

