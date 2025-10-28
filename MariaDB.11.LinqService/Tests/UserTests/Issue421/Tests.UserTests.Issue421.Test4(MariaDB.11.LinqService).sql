BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB (asynchronously)

INSERT INTO `BlobClass`
(
	`Id`,
	`BlobValue`
)
VALUES
(
	1,
	0x010203
)

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB (asynchronously)

SELECT
	`t1`.`Id`,
	`t1`.`BlobValue`
FROM
	`BlobClass` `t1`
WHERE
	`t1`.`Id` = 1
LIMIT 1

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB (asynchronously)

SELECT
	`t1`.`Id`,
	`t1`.`BlobValue`
FROM
	`BlobClass` `t1`
WHERE
	`t1`.`Id` = 1
LIMIT 1

