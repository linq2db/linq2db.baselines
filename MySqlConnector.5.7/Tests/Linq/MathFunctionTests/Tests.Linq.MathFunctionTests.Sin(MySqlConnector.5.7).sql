BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`t`.`c1`
FROM
	(
		SELECT
			Floor(Sin(`p`.`MoneyValue` / 15) * 15) as `c1`
		FROM
			`LinqDataTypes` `p`
	) `t`
WHERE
	`t`.`c1` <> 0.10000000000000001

