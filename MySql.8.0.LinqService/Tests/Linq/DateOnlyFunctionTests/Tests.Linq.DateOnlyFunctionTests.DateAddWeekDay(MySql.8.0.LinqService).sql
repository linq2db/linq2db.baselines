BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	Date_Add(`t`.`TransactionDate`, Interval 1 Day)
FROM
	`Transactions` `t`

