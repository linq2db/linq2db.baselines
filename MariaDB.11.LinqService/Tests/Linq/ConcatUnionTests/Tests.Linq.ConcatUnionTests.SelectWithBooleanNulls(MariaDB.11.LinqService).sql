BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql (asynchronously)

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

