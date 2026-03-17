-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	Extract(month from `t`.`TransactionDate`)
FROM
	`Transactions` `t`

