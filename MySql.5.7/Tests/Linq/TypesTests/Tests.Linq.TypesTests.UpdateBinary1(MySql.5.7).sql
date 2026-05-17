-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @BinaryValue Blob(5) -- Binary
SET     @BinaryValue = 0x0102030405

UPDATE
	`LinqDataTypes` `t`
SET
	`t`.`BinaryValue` = @BinaryValue
WHERE
	`t`.`ID` = 1

-- MySql.5.7 MySql.5.7.MySql.Data MySql57

SELECT
	`t`.`BinaryValue`
FROM
	`LinqDataTypes` `t`
WHERE
	`t`.`ID` = 1

