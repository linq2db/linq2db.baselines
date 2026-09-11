-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @flag UByte -- Boolean
SET     @flag = 1

SELECT
	`t`.`ID`
FROM
	`LinqDataTypes` `t`
WHERE
	@flag IN (`t`.`BoolValue`)

