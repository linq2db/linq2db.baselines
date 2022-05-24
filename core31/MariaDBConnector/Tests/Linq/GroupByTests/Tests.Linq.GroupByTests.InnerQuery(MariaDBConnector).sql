BeforeExecute
-- MariaDBConnector MySqlConnector MySql

SELECT
	(
		SELECT
			`d`.`Taxonomy`
		FROM
			`Doctor` `d`
		WHERE
			`t1`.`PersonID` = `d`.`PersonID`
		LIMIT 1
	)
FROM
	`Doctor` `t1`
GROUP BY
	`t1`.`PersonID`

