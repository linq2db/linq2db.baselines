-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	`x`.`TransactionId`,
	CAST(`x`.`TransactionDate` AS DATETIME)
FROM
	`DateTimeOffsetTable` `x`
ORDER BY
	CAST(`x`.`TransactionDate` AS DATETIME)

