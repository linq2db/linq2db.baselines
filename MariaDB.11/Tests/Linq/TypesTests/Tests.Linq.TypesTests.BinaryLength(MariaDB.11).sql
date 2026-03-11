-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @BinaryValue Blob(5) -- Binary
SET     @BinaryValue = 0x0102030405

UPDATE
	`LinqDataTypes` `t`
SET
	`t`.`BinaryValue` = @BinaryValue
WHERE
	`t`.`ID` = 1

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	Length(`t`.`BinaryValue`)
FROM
	`LinqDataTypes` `t`
WHERE
	`t`.`ID` = 1
LIMIT 1

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @BinaryValue Blob -- Binary
SET     @BinaryValue = NULL

UPDATE
	`LinqDataTypes` `t`
SET
	`t`.`BinaryValue` = @BinaryValue
WHERE
	`t`.`ID` = 1

