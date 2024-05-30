BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	`x`.`ParentID`,
	`x`.`ChildID`
FROM
	`Child` `x`
WHERE
	EXISTS(
		SELECT
			`y`.`ParentID`
		FROM
			`Child` `y`
		GROUP BY
			`y`.`ParentID`
		HAVING
			MAX(`y`.`ChildID`) = `x`.`ChildID`
	)

