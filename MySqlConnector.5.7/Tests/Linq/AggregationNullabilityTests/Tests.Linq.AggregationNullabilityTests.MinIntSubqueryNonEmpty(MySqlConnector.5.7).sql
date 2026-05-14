-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	(
		SELECT
			MIN(`i`.`IntValue`)
		FROM
			`Inner` `i`
		WHERE
			`i`.`Group` = `o`.`Group`
	)
FROM
	`Outer` `o`
WHERE
	`o`.`Id` = 1
LIMIT 1

