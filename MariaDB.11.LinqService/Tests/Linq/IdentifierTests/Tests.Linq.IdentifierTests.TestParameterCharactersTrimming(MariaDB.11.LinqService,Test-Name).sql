BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB (asynchronously)
DECLARE @TestName Int32
SET     @TestName = 2

UPDATE
	`testparams` `t`
SET
	`t`.`Test-Name` = @TestName
WHERE
	`t`.`Test-Name` = 1

