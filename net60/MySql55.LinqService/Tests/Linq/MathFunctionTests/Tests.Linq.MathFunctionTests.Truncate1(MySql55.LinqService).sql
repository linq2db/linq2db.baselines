BeforeExecute
-- MySql55 MySql.Official MySql

SELECT
	Truncate(`p`.`MoneyValue`, 0)
FROM
	`LinqDataTypes` `p`
WHERE
	(Truncate(`p`.`MoneyValue`, 0) <> 0.1 OR Truncate(`p`.`MoneyValue`, 0) IS NULL)

