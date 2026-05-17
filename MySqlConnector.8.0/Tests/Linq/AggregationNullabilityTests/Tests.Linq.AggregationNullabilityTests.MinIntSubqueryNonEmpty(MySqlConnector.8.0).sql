-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

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

