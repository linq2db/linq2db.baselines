BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	Count(*)
FROM
	`Child` `t1`
GROUP BY
	`t1`.`ParentID`

