BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB (asynchronously)
DECLARE @ID Int32
SET     @ID = 5

DELETE  
FROM
	`Issue681Table`
WHERE
	`Issue681Table`.`ID` = @ID

