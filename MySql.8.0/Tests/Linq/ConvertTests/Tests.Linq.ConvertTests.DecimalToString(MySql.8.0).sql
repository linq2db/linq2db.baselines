BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	Cast(`t`.`MoneyValue` as CHAR(31))
FROM
	`LinqDataTypes` `t`
WHERE
	Char_Length(Cast(`t`.`MoneyValue` as CHAR(31))) > 0

