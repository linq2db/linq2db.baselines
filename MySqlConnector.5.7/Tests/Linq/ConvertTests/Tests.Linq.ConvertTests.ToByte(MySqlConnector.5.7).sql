BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`p_1`.`c1`
FROM
	(
		SELECT
			CAST(Floor(`p`.`MoneyValue`) AS UNSIGNED) as `c1`
		FROM
			`LinqDataTypes` `p`
	) `p_1`
WHERE
	`p_1`.`c1` > 0

