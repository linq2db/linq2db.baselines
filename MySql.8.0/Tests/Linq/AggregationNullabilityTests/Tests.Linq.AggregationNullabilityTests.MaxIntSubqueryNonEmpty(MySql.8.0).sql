-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	(
		SELECT
			MAX(`i`.`IntValue`)
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

