-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	`t`.`Str`,
	CHAR_LENGTH(`t`.`Str`),
	Concat('original-', `t`.`Str`)
FROM
	`TestLengthModel` `t`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	`t1`.`Id`,
	`t1`.`Str`
FROM
	`TestLengthModel` `t1`

