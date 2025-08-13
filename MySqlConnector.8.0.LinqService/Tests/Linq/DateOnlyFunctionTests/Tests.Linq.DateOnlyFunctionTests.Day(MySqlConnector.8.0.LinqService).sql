BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	Extract(day from `t`.`TransactionDate`)
FROM
	`Transactions` `t`

