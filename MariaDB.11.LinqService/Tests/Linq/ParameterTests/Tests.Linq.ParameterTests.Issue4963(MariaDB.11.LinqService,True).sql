BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB (asynchronously)

UPDATE
	`Issue4963Table` `t1`
SET
	`t1`.`Field` = CAST(CAST(`t1`.`Field` AS SIGNED) + -1 AS UNSIGNED)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB (asynchronously)

SELECT
	`t1`.`Field`
FROM
	`Issue4963Table` `t1`
LIMIT 2

