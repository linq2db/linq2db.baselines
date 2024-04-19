BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`t2`.`ChildID`
FROM
	`Parent` `p`
		LEFT JOIN (
			SELECT
				`t1`.`ChildID`
			FROM
				`Child` `t1`
			LIMIT 1
		) `t2` ON 1=1

