-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	`p`.`MoneyValue`
FROM
	`LinqDataTypes` `p`
WHERE
	CAST(Floor(`p`.`MoneyValue`) AS UNSIGNED) > 0

