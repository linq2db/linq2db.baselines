BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql (asynchronously)
DECLARE @v1 Int32
SET     @v1 = 1

UPDATE
	`Parent` `p`
SET
	`p`.`Value1` = @v1
WHERE
	`p`.`Value1` = @v1

