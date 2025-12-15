-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	`d`.`TransactionDate`
FROM
	`Transactions` `d`
WHERE
	Extract(day from `d`.`TransactionDate`) > 0

