-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`x`.`TransactionId`,
	CAST(`x`.`TransactionDate` AS DATETIME)
FROM
	`DateTimeOffsetTable` `x`
ORDER BY
	CAST(`x`.`TransactionDate` AS DATETIME)

