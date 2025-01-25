BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
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
-- MariaDB.11 MariaDB.10.MySqlConnector MySql
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

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	`t`.`ID`,
	`t`.`MoneyValue`,
	`t`.`DateTimeValue`,
	`t`.`BoolValue`,
	`t`.`GuidValue`,
	`t`.`BinaryValue`,
	`t`.`SmallIntValue`,
	`t`.`StringValue`
FROM
	`LinqDataTypes` `t`
WHERE
	`t`.`ID` IN (1, 2)

