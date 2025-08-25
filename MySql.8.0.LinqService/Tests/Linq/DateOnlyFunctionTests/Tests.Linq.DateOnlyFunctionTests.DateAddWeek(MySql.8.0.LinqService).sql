BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80 (asynchronously)

SELECT
	Date_Add(`t`.`TransactionDate`, Interval -1 Week)
FROM
	`Transactions` `t`

