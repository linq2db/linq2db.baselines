BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

UPDATE
	`LinqDataTypes` `p`
SET
	`p`.`BoolValue` = 1,
	`p`.`DateTimeValue` = CURRENT_TIMESTAMP
WHERE
	`p`.`ID` = 100000

