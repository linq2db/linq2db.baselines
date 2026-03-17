-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`p1`.`ParentID`,
	NULL
FROM
	`Parent` `p1`
UNION
SELECT
	`p2`.`ParentID`,
	`p2`.`Value1`
FROM
	`Parent` `p2`

