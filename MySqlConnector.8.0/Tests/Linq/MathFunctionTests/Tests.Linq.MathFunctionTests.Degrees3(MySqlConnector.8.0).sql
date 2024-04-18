BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`t`.`c1`
FROM
	(
		SELECT
			Degrees(Cast(Floor(`p`.`MoneyValue`) as SIGNED)) as `c1`
		FROM
			`LinqDataTypes` `p`
	) `t`
WHERE
	Cast(`t`.`c1` as DOUBLE) <> 0.10000000000000001

