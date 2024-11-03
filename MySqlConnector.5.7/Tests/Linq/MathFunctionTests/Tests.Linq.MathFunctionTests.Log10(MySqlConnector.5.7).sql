BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`t`.`c1`
FROM
	(
		SELECT
			Floor(Log10(`p`.`MoneyValue`)) as `c1`
		FROM
			`LinqDataTypes` `p`
	) `t`
WHERE
	`t`.`c1` <> 0.10000000000000001

