BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`p1`.`ParentID`,
	`p1`.`ParentID`,
	`p1`.`Value1`
FROM
	`Parent` `p1`
UNION ALL
SELECT
	Coalesce(`p2`.`Value1`, 0),
	NULL,
	NULL
FROM
	`Parent` `p2`

BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`t1`.`ParentID`,
	`t1`.`Value1`
FROM
	`Parent` `t1`

