BeforeExecute
-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80

SELECT
	Date_Add(`t`.`TransactionDate`, Interval 12 Year)
FROM
	`Transactions` `t`

