BeforeExecute
-- MariaDBConnector MySqlConnector MySql

SELECT
	(
		SELECT
			`p`.`ChildID`
		FROM
			`Child` `p`
		LIMIT 1
	)
FROM
	`Parent` `p_1`

