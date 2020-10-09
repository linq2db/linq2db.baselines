BeforeExecute
-- MySql MySql.Official MySql

SELECT 
	`p`.`c1`
FROM
	( 
		SELECT 
			Cast(`t`.`MoneyValue` as CHAR(31)) as `c1`
		FROM
			`LinqDataTypes` `t`
	) `p`
WHERE
	Char_Length(`p`.`c1`) > 0

