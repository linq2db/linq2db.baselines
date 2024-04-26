BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`t2`.`ChildID`
FROM
	(
		SELECT
			`t1`.`ParentID` + 1 as `c1`,
			`t1`.`ChildID`
		FROM
			`GrandChild` `t1`
	) `t2`
GROUP BY
	`t2`.`c1`,
	`t2`.`ChildID`

