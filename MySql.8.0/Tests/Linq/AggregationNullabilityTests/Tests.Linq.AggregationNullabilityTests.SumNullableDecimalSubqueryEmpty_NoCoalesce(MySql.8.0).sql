-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	(
		SELECT
			SUM(`i`.`DecimalValueN`)
		FROM
			`Inner` `i`
		WHERE
			`i`.`Group` = `o`.`Group`
	)
FROM
	`Outer` `o`
WHERE
	`o`.`Id` = 2
LIMIT 1

