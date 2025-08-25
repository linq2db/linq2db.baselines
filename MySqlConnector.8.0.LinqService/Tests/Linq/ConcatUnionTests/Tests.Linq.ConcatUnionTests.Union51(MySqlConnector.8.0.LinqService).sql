BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80 (asynchronously)

SELECT
	`p1`.`ParentID`,
	`p1`.`Value1`
FROM
	`Parent` `p1`
UNION
SELECT
	`p2`.`ParentID`,
	NULL
FROM
	`Parent` `p2`

