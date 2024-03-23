BeforeExecute
-- MariaDB MySqlConnector MySql
DECLARE @BoolValue Bool -- Boolean
SET     @BoolValue = 1

UPDATE
	`LinqDataTypes` `p`
SET
	`p`.`BoolValue` = @BoolValue,
	`p`.`DateTimeValue` = CURRENT_TIMESTAMP
WHERE
	`p`.`ID` = 100000

