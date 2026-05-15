-- MySql.8.0 MySql.8.0.MySql.Data MySql80

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

