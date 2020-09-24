BeforeExecute
-- MySqlConnector MySql

SELECT
	`o`.`ParentID`,
	`o`.`Value1`,
	`x`.`ParentID`,
	`x`.`ChildID`
FROM
	`Parent` `o`
		LEFT JOIN (
			SELECT DISTINCT
				`t1`.`ParentID`,
				`t1`.`ChildID`
			FROM
				`Child` `t1`
		) `x` ON `x`.`ParentID` = `o`.`ParentID`

