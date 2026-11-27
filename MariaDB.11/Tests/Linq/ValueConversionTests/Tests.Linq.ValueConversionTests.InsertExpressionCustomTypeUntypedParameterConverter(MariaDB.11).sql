-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
INSERT INTO `CustomFieldRecord`
(
	`Id`,
	`Field1`
)
VALUES
(
	1,
	NULL
)

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
INSERT INTO `CustomFieldRecord`
(
	`Id`,
	`Field1`
)
VALUES
(
	2,
	NULL
)

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
INSERT INTO `CustomFieldRecord`
(
	`Id`,
	`Field1`
)
VALUES
(
	3,
	'test'
)

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`t1`.`Id`,
	`t1`.`Field1`
FROM
	`CustomFieldRecord` `t1`
ORDER BY
	`t1`.`Id`

