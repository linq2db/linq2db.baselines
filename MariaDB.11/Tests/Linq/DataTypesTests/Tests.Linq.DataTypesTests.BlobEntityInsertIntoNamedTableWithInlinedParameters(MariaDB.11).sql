-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
INSERT INTO `BlobValueEntity`
(
	`Id`,
	`BlobValue`
)
VALUES
(
	1,
	0x010203
)

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`t1`.`Id`,
	`t1`.`BlobValue`
FROM
	`BlobValueEntity` `t1`
WHERE
	`t1`.`Id` = 1
LIMIT 1

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`t1`.`Id`,
	`t1`.`BlobValue`
FROM
	`BlobValueEntity` `t1`
WHERE
	`t1`.`Id` = 1
LIMIT 1

