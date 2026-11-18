-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @flag UByte -- Boolean
SET     @flag = 1

SELECT
	`t`.`ID`
FROM
	`LinqDataTypes` `t`
WHERE
	@flag IN (`t`.`BoolValue`)

