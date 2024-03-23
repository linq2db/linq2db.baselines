BeforeExecute
-- MySqlConnector MySql

SELECT
	`p_1`.`c1`
FROM
	(
		SELECT
			Cast(Floor(`p`.`MoneyValue`) as SIGNED) as `c1`
		FROM
			`LinqDataTypes` `p`
	) `p_1`
WHERE
	`p_1`.`c1` > 0

