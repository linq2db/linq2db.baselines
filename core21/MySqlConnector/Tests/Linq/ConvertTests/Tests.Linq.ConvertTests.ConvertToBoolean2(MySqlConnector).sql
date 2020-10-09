BeforeExecute
-- MySqlConnector MySql

SELECT 
	`p`.`c1`
FROM
	( 
		SELECT 
			CASE
				WHEN `t`.`MoneyValue` - 4.5 = 0
					THEN 0
				ELSE 1
			END as `c1`
		FROM
			`LinqDataTypes` `t`
	) `p`
WHERE
	NOT (`p`.`c1` IS NOT NULL AND `p`.`c1` = 1)

