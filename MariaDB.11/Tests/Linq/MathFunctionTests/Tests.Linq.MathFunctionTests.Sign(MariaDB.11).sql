BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	Sign(`p`.`MoneyValue`)
FROM
	`LinqDataTypes` `p`
WHERE
	Sign(`p`.`MoneyValue`) <> 0

