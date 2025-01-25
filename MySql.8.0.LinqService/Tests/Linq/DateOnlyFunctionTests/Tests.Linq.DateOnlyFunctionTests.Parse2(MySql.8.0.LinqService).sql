BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`d`.`TransactionDate`
FROM
	`Transactions` `d`
WHERE
	Extract(day from `d`.`TransactionDate`) > 0

