-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @flag Bool -- Boolean
SET     @flag = 1

SELECT
	`t`.`ID`
FROM
	`LinqDataTypes` `t`
WHERE
	@flag IN (`t`.`BoolValue`)

