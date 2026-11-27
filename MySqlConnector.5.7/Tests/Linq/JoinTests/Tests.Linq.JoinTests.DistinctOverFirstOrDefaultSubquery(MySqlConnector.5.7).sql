-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
SELECT DISTINCT
	(
		SELECT
			`cc`.`Name`
		FROM
			`LookupCity` `cc`
		WHERE
			`cc`.`Code` = `pe`.`Code` OR `cc`.`Code` IS NULL AND `pe`.`Code` IS NULL
		LIMIT 1
	)
FROM
	`LookupPerson` `pe`

