-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
SELECT
	CAST(CAST(`d`.`TransactionDate` AS CHAR(10)) AS DATE)
FROM
	`Transactions` `d`
WHERE
	Extract(day from CAST(CAST(`d`.`TransactionDate` AS CHAR(10)) AS DATE)) > 0

