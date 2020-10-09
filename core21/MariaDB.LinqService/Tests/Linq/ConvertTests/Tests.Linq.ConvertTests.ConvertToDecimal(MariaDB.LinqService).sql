BeforeExecute
-- MariaDB MySql.Official MySql

SELECT 
	`p`.`c1`
FROM
	( 
		SELECT 
			Cast(`t`.`MoneyValue` as DECIMAL(29,10)) as `c1`
		FROM
			`LinqDataTypes` `t`
	) `p`
WHERE
	`p`.`c1` > 0

