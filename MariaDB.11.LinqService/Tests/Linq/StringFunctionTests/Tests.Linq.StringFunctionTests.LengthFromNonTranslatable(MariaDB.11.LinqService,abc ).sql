BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	`t`.`Str`,
	CHAR_LENGTH(`t`.`Str`),
	Concat('original-', `t`.`Str`)
FROM
	`TestLengthModel` `t`

BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	`t1`.`Id`,
	`t1`.`Str`
FROM
	`TestLengthModel` `t1`

