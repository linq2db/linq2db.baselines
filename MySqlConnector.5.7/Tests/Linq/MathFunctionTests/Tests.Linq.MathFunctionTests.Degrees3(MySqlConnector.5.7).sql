BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`t`.`Value_1`
FROM
	(
		SELECT
			Degrees(CAST(Floor(`p`.`MoneyValue`) AS SIGNED)) as `Value_1`
		FROM
			`LinqDataTypes` `p`
	) `t`
WHERE
	CAST(`t`.`Value_1` AS DECIMAL(29, 10)) <> 0.10000000000000001

