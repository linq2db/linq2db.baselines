-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`t`.`c1`
FROM
	(
		SELECT
			ROUND(`p`.`MoneyValue`, 1) as `c1`
		FROM
			`LinqDataTypes` `p`
	) `t`
WHERE
	`t`.`c1` <> 0

