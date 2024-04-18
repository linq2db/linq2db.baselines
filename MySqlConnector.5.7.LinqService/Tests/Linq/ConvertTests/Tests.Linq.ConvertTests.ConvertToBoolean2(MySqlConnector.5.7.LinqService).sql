BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	CASE
		WHEN `t`.`MoneyValue` <> 4.5
			THEN 1
		ELSE 0
	END
FROM
	`LinqDataTypes` `t`
WHERE
	`t`.`MoneyValue` = 4.5

