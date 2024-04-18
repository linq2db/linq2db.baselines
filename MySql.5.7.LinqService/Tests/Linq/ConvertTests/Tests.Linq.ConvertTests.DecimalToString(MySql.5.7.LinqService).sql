BeforeExecute
-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	Cast(`t`.`MoneyValue` as CHAR(31))
FROM
	`LinqDataTypes` `t`
WHERE
	Char_Length(Cast(`t`.`MoneyValue` as CHAR(31))) > 0

