-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	Replace(CAST(`p`.`MoneyValue` AS CHAR(31)), ',', '.')
FROM
	`LinqDataTypes` `p`
WHERE
	CHAR_LENGTH(CAST(`p`.`MoneyValue` AS CHAR(31))) > 0

