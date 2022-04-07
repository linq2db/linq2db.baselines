BeforeExecute
-- MariaDB MySql.Official MySql

SELECT
	Sign(`p`.`MoneyValue`)
FROM
	`LinqDataTypes` `p`
WHERE
	Sign(`p`.`MoneyValue`) <> 0

