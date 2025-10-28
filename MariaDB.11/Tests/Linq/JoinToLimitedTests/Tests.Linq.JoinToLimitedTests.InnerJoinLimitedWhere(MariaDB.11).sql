BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	`o`.`ParentID`,
	`o`.`Value1`,
	`c_1`.`ParentID`,
	`c_1`.`ChildID`
FROM
	`Parent` `o`
		INNER JOIN (
			SELECT
				`x`.`ParentID`,
				`x`.`ChildID`
			FROM
				`Child` `x`
			LIMIT 1
		) `c_1` ON `c_1`.`ParentID` = `o`.`ParentID`

