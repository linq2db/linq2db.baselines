BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	Count(*)
FROM
	(
		SELECT
			0 as `c1`
		FROM
			`Child` `t1`
		GROUP BY
			`t1`.`ParentID`
	) `t2`

