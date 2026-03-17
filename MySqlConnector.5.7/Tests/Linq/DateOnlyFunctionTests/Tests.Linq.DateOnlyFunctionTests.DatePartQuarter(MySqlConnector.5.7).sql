-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	Extract(quarter from `t`.`TransactionDate`)
FROM
	`Transactions` `t`

