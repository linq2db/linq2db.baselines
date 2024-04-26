BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

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

