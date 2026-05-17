-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	REGEXP_REPLACE(`t`.`VarCharColumn`, '(?-i)^[.+]+', '')
FROM
	`StringTrimTable` `t`
ORDER BY
	`t`.`Id`

