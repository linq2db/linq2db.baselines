BeforeExecute
-- MariaDB MySql.Official MySql

SELECT
	Floor(Acos(`p`.`MoneyValue` / 15) * 15)
FROM
	`LinqDataTypes` `p`
WHERE
	(Floor(Acos(`p`.`MoneyValue` / 15) * 15) <> 0.10000000000000001 OR Floor(Acos(`p`.`MoneyValue` / 15) * 15) IS NULL)

