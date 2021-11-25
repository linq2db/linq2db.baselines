BeforeExecute
-- MariaDB MySqlConnector MySql

SELECT
	Sum(`selectParam`.`MoneyValue`),
	Extract(year from `selectParam`.`DateTimeValue`),
	Extract(month from `selectParam`.`DateTimeValue`)
FROM
	`LinqDataTypes` `selectParam`
GROUP BY
	Extract(month from `selectParam`.`DateTimeValue`),
	Extract(year from `selectParam`.`DateTimeValue`)

