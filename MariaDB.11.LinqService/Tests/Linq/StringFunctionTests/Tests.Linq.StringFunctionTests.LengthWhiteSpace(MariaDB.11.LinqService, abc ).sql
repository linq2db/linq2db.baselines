BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB (asynchronously)

SELECT
	`t`.`Str`,
	CHAR_LENGTH(`t`.`Str`)
FROM
	`TestLengthModel` `t`
LIMIT 2

