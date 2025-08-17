BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80 (asynchronously)

SELECT
	COUNT(*)
FROM
	(
		SELECT
			1 as `c1`
		FROM
			`Person` `r`
		GROUP BY
			`r`.`PersonID`,
			`r`.`PersonID`
	) `t1`

