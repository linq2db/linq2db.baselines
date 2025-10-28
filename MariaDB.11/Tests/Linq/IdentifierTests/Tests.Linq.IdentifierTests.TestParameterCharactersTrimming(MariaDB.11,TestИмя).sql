BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @Test Int32
SET     @Test = 2

UPDATE
	`testparams` `t`
SET
	`t`.`TestИмя` = @Test
WHERE
	`t`.`TestИмя` = 1

