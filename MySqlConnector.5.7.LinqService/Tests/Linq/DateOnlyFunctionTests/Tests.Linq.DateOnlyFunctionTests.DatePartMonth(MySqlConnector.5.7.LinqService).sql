BeforeExecute
-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	Extract(month from `t`.`TransactionDate`)
FROM
	`Transactions` `t`

