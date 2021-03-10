BeforeExecute
-- MariaDB MySql.Official MySql

SELECT
	Floor(Degrees(`p`.`MoneyValue`))
FROM
	`LinqDataTypes` `p`
WHERE
	Floor(Degrees(`p`.`MoneyValue`)) <> 0.1

