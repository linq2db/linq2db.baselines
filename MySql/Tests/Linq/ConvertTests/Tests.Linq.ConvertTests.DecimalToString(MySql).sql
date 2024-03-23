BeforeExecute
-- MySql MySql.Official MySql

SELECT
	`p`.`MoneyValue`
FROM
	`LinqDataTypes` `p`
WHERE
	Char_Length(Cast(`p`.`MoneyValue` as CHAR(255))) > 0

