BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`o`.`ParentID`,
	`o`.`Value1`,
	`t1`.`ParentID`,
	`t1`.`ChildID`
FROM
	`Parent` `o`
		LEFT JOIN LATERAL (
			SELECT DISTINCT
				`x`.`ParentID`,
				`x`.`ChildID`
			FROM
				`Child` `x`
			WHERE
				`x`.`ParentID` = `o`.`ParentID`
		) `t1` ON 1=1

