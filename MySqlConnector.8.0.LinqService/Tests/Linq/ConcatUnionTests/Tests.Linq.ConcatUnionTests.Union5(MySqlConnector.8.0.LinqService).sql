BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`p`.`ParentID`,
	`p`.`Value1`
FROM
	`Parent` `p`
UNION
SELECT
	`p2`.`ParentID`,
	NULL
FROM
	`Parent` `p2`

