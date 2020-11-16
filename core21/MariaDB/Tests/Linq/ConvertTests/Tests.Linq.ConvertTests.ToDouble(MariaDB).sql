BeforeExecute
-- MariaDB MySql.Official MySql

SELECT
	Cast(Floor(`p`.`MoneyValue`) as SIGNED)
FROM
	`LinqDataTypes` `p`
WHERE
	Cast(Floor(`p`.`MoneyValue`) as SIGNED) > 0

