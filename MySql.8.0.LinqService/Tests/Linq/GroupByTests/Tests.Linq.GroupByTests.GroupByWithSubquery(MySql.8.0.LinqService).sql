BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`_1`.`c1`,
	COUNT(*)
FROM
	(
		SELECT
			1 as `c1`
		FROM
			`Person` `_`
		WHERE
			1 = 0
	) `_1`
GROUP BY
	`_1`.`c1`

