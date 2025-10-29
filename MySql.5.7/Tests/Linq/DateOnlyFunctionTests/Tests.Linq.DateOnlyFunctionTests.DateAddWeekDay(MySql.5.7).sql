-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	Date_Add(`t`.`TransactionDate`, Interval 1 Day)
FROM
	`Transactions` `t`

