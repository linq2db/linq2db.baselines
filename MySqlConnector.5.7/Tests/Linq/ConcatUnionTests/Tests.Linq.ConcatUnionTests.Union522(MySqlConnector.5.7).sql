-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`p1`.`Value1`,
	NULL
FROM
	`Parent` `p1`
UNION
SELECT
	`p2`.`Value1`,
	`p2`.`ParentID`
FROM
	`Parent` `p2`

