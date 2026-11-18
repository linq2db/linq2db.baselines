-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
INSERT INTO `InheritanceFilterPositional`
(
	`Id`,
	`Code`,
	`Value`
)
VALUES
(
	1,
	1,
	42
)

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`t1`.`Id`,
	`t1`.`Code`,
	`t1`.`Value`
FROM
	`InheritanceFilterPositional` `t1`
LIMIT 2

