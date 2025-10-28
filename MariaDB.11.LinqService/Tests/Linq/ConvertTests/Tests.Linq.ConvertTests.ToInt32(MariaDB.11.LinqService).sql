BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB (asynchronously)

SELECT
	`p`.`MoneyValue`
FROM
	`LinqDataTypes` `p`
WHERE
	CAST(Floor(`p`.`MoneyValue`) AS SIGNED) > 0

