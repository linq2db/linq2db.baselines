BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57 (asynchronously)

SELECT
	Date_Add(`t`.`TransactionDate`, Interval 2 Month)
FROM
	`Transactions` `t`

