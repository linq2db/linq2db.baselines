-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
INSERT INTO `DurationRow`
(
	`Id`,
	`InSeconds`,
	`InTicks`,
	`Undeclared`,
	`UndeclaredSeconds`
)
VALUES
(1,4567,45670000000,45670000000,4567)

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`t1`.`Id`,
	`t1`.`InSeconds`,
	`t1`.`InTicks`,
	`t1`.`Undeclared`,
	`t1`.`UndeclaredSeconds`
FROM
	`DurationRow` `t1`
LIMIT 2

