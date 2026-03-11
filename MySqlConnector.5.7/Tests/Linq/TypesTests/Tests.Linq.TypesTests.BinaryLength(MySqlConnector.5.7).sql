-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @BinaryValue Blob(5) -- Binary
SET     @BinaryValue = 0x0102030405

UPDATE
	`LinqDataTypes` `t`
SET
	`t`.`BinaryValue` = @BinaryValue
WHERE
	`t`.`ID` = 1

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57

SELECT
	Length(`t`.`BinaryValue`)
FROM
	`LinqDataTypes` `t`
WHERE
	`t`.`ID` = 1
LIMIT 1

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @BinaryValue Blob -- Binary
SET     @BinaryValue = NULL

UPDATE
	`LinqDataTypes` `t`
SET
	`t`.`BinaryValue` = @BinaryValue
WHERE
	`t`.`ID` = 1

