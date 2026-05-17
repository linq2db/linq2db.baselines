-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`x`.`ID`,
	`x`.`BigIntValue`
FROM
	`LinqDataTypes` `x`
WHERE
	`x`.`BigIntValue` IN (0, 1)

