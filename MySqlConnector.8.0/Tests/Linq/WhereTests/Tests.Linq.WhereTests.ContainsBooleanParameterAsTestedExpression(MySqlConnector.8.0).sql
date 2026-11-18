-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @flag Bool -- Boolean
SET     @flag = 1

SELECT
	`t`.`ID`
FROM
	`LinqDataTypes` `t`
WHERE
	@flag IN (`t`.`BoolValue`)

