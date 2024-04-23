BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

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

