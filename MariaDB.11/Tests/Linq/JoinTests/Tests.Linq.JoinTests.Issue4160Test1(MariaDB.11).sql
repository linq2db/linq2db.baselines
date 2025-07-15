BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT DISTINCT
	(
		SELECT
			`cc`.`Name`
		FROM
			`Issue4160City` `cc`
		WHERE
			`cc`.`Code` = `pe`.`Code` OR `cc`.`Code` IS NULL AND `pe`.`Code` IS NULL
		LIMIT 1
	)
FROM
	`Issue4160Person` `pe`

