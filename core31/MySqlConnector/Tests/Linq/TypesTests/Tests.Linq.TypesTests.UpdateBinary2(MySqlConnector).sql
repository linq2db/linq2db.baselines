BeforeExecute
-- MySqlConnector MySql
DECLARE @BinaryValue Blob(5) -- Binary
SET     @BinaryValue = 0x0102030405
DECLARE @ID Int32
SET     @ID = 1

UPDATE
	`LinqDataTypes` `t`
SET
	`t`.`BinaryValue` = @BinaryValue
WHERE
	`t`.`ID` = @ID

BeforeExecute
-- MySqlConnector MySql
DECLARE @BinaryValue Blob(5) -- Binary
SET     @BinaryValue = 0x0504030201
DECLARE @ID Int32
SET     @ID = 2

UPDATE
	`LinqDataTypes` `t`
SET
	`t`.`BinaryValue` = @BinaryValue
WHERE
	`t`.`ID` = @ID

