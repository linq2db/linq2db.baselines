-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	Date_Add(`t`.`TransactionDate`, Interval 12 Year)
FROM
	`Transactions` `t`

