BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @from Int32
SET     @from = 2

UPDATE
	`testparams` `t`
SET
	`t`.`from` = @from
WHERE
	`t`.`from` = 1

