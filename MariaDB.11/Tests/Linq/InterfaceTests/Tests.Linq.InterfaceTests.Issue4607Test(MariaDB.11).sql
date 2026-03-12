-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

INSERT INTO `SomeTable`
(
	`Id`,
	`ClassProp`,
	`Interface`
)
VALUES
(
	1,
	1,
	0
)

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	`t1`.`Id`,
	`t1`.`ClassProp`,
	`t1`.`Interface`
FROM
	`SomeTable` `t1`
LIMIT 2

