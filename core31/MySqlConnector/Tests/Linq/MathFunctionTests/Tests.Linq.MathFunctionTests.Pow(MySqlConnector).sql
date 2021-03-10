BeforeExecute
-- MySqlConnector MySql

SELECT
	Floor(Power(`p`.`MoneyValue`, 3))
FROM
	`LinqDataTypes` `p`
WHERE
	(Floor(Power(`p`.`MoneyValue`, 3)) <> 0 OR Floor(Power(`p`.`MoneyValue`, 3)) IS NULL)

