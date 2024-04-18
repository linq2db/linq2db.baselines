BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	Sum(`t1`.`Value1`),
	SUM(`t1`.`Value1`)
FROM
	`Parent` `t1`
GROUP BY
	`t1`.`ParentID`

