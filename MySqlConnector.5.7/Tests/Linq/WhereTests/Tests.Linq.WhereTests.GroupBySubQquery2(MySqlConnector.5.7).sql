BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`x`.`ParentID`,
	`x`.`ChildID`
FROM
	`Child` `x`
WHERE
	`x`.`ChildID` IN (
		SELECT
			Max(`t1`.`ChildID`)
		FROM
			`Child` `t1`
		GROUP BY
			`t1`.`ParentID`
	)

