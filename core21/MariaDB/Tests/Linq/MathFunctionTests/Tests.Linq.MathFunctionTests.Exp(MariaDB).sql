BeforeExecute
-- MariaDB MySql.Official MySql

SELECT
	Floor(Exp(`p`.`MoneyValue`))
FROM
	`LinqDataTypes` `p`
WHERE
	(Floor(Exp(`p`.`MoneyValue`)) <> 0.10000000000000001 OR Floor(Exp(`p`.`MoneyValue`)) IS NULL)

