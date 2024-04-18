BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`t1`.`ParentID`
FROM
	(
		SELECT
			`ch`.`ParentID` + 1 as `ParentID`
		FROM
			`Child` `ch`
	) `t1`
GROUP BY
	`t1`.`ParentID`

