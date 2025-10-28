BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB (asynchronously)
DECLARE @offset Int32
SET     @offset = -1

UPDATE
	`Issue4963Table` `t1`
SET
	`t1`.`Field` = CAST(CAST(`t1`.`Field` AS SIGNED) + @offset AS UNSIGNED)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB (asynchronously)

SELECT
	`t1`.`Field`
FROM
	`Issue4963Table` `t1`
LIMIT 2

