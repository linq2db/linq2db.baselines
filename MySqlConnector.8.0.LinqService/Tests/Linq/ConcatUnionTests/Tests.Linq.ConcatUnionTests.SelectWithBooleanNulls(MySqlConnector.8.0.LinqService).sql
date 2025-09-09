BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80 (asynchronously)

SELECT
	EXISTS(
		SELECT
			*
		FROM
			`Child` `t1`
	),
	`x`.`ParentID` <> 0
FROM
	`Parent` `x`
UNION ALL
SELECT
	EXISTS(
		SELECT
			*
		FROM
			`Child` `t2`
	),
	NULL
FROM
	`Parent` `x_1`

