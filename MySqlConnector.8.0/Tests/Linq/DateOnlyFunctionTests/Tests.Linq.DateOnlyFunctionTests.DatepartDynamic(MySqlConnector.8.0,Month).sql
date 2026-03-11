-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	Extract(month from `t`.`TransactionDate`)
FROM
	`Transactions` `t`

