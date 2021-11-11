BeforeExecute
-- MySql MySql.Official MySql

SELECT
	Truncate((-`p`.`MoneyValue`), 0)
FROM
	`LinqDataTypes` `p`
WHERE
	Truncate((-`p`.`MoneyValue`), 0) <> 0.10000000000000001

