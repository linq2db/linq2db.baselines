BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB (asynchronously)
DECLARE @BinaryValue Blob(5) -- Binary
SET     @BinaryValue = 0x0102030405

UPDATE
	`LinqDataTypes` `t`
SET
	`t`.`BinaryValue` = @BinaryValue
WHERE
	`t`.`ID` = 1

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB (asynchronously)

SELECT
	`t`.`BinaryValue`
FROM
	`LinqDataTypes` `t`
WHERE
	`t`.`ID` = 1

