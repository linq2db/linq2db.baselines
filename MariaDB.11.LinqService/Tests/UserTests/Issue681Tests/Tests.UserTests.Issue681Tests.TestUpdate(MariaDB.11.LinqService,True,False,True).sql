BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB (asynchronously)
DECLARE @Value Int32
SET     @Value = 10
DECLARE @ID Int32
SET     @ID = 5

UPDATE
	`Issue681Table` `t1`
SET
	`t1`.`Value` = @Value
WHERE
	`t1`.`ID` = @ID

