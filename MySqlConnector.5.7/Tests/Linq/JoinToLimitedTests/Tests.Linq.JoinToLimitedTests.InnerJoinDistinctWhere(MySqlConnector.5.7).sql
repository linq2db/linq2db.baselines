BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`o`.`ParentID`,
	`o`.`Value1`,
	`c_1`.`ParentID`,
	`c_1`.`ChildID`
FROM
	`Parent` `o`
		INNER JOIN (
			SELECT DISTINCT
				`x`.`ParentID`,
				`x`.`ChildID`
			FROM
				`Child` `x`
		) `c_1` ON `c_1`.`ParentID` = `o`.`ParentID`

