BeforeExecute
-- MariaDB MySql.Official MySql

SELECT 
	`t`.`c1`
FROM
	( 
		SELECT 
			Floor(Atan2(`p`.`MoneyValue` / 15, 0) * 15) as `c1`
		FROM
			`LinqDataTypes` `p`
	) `t`
WHERE
	`t`.`c1` <> 0.10000000000000001

