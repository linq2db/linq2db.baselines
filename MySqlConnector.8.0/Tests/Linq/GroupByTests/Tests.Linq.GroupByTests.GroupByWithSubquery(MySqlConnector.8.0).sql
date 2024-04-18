BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`t1`.`c1`,
	Count(*)
FROM
	(
		SELECT
			1 as `c1`
		FROM
			`Person` `_`
		WHERE
			1 = 0
	) `t1`
GROUP BY
	`t1`.`c1`

