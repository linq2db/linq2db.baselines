BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	Truncate(`p`.`MoneyValue`, 0)
FROM
	`LinqDataTypes` `p`
WHERE
	Truncate(`p`.`MoneyValue`, 0) <> 0.1

