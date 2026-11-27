-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
UPDATE
	`ByteFieldUpdateTable` `t1`
SET
	`t1`.`Field` = CAST(CAST(`t1`.`Field` AS SIGNED) + -1 AS UNSIGNED)

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`t1`.`Id`,
	`t1`.`Field`
FROM
	`ByteFieldUpdateTable` `t1`
LIMIT 2

