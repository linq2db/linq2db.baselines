-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	`t`.`Str`,
	CHAR_LENGTH(`t`.`Str`)
FROM
	`TestLengthModel` `t`
LIMIT 2

