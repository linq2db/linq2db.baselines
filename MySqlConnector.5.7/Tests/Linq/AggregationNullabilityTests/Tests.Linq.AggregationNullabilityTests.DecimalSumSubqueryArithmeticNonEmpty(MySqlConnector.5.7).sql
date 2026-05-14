-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`o`.`Anchor` - Coalesce((
		SELECT
			SUM(`i`.`DecimalValue`)
		FROM
			`Inner` `i`
		WHERE
			`i`.`Group` = `o`.`Group`
	), 0)
FROM
	`Outer` `o`
WHERE
	`o`.`Id` = 1
LIMIT 1

