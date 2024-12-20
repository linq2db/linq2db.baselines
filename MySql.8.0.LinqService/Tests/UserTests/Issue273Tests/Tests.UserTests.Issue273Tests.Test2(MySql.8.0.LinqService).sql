BeforeExecute
-- MySql.8.0 MySql.8.0.MySql.Data MySql80

SELECT
	`x`.`ID`,
	`x`.`BigIntValue`
FROM
	`LinqDataTypes` `x`
WHERE
	`x`.`BigIntValue` = 0 AND `x`.`ID` = 10 OR `x`.`BigIntValue` = 1 AND `x`.`ID` = 10

