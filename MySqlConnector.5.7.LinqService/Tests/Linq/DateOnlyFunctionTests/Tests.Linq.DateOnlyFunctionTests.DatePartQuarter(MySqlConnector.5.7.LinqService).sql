BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57 (asynchronously)

SELECT
	Extract(quarter from `t`.`TransactionDate`)
FROM
	`Transactions` `t`

