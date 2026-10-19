-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	CAST(CAST(`d`.`TransactionDate` AS CHAR(10)) AS DATE)
FROM
	`Transactions` `d`
WHERE
	Extract(day from CAST(CAST(`d`.`TransactionDate` AS CHAR(10)) AS DATE)) > 0

