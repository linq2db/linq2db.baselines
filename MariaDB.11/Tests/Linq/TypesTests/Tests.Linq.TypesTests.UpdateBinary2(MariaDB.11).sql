BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @BinaryValue Blob(5) -- Binary
SET     @BinaryValue = 0x0102030405
DECLARE @p Int32
SET     @p = 1

UPDATE
	`LinqDataTypes` `t`
SET
	`t`.`BinaryValue` = @BinaryValue
WHERE
	`t`.`ID` = @p

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @BinaryValue Blob(5) -- Binary
SET     @BinaryValue = 0x0504030201
DECLARE @p Int32
SET     @p = 2

UPDATE
	`LinqDataTypes` `t`
SET
	`t`.`BinaryValue` = @BinaryValue
WHERE
	`t`.`ID` = @p

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

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

