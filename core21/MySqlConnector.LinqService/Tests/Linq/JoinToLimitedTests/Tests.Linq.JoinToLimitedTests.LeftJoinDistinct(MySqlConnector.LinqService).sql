BeforeExecute
-- MySqlConnector MySql

SELECT
	`o`.`ParentID`,
	`o`.`Value1`,
	`cg`.`c_1`,
	`cg`.`ChildID`
FROM
	`Parent` `o`
		LEFT JOIN (
			SELECT DISTINCT
				`t1`.`ParentID` as `c_1`,
				`t1`.`ChildID`
			FROM
				`Child` `t1`
		) `cg` ON `o`.`ParentID` = `cg`.`c_1`

