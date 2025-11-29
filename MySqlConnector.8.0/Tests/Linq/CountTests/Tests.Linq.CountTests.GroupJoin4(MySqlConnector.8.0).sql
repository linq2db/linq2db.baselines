-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`t2`.`Count1` + `t2`.`Count1`
FROM
	(
		SELECT
			(
				SELECT
					COUNT(*)
				FROM
					`Child` `c_1`
				WHERE
					`t1`.`ParentID` = `c_1`.`ParentID`
			) as `Count1`
		FROM
			`Parent` `t1`
	) `t2`

