-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	CONCAT(`t`.`Value1`, Coalesce(`t`.`Value2`, ''))
FROM
	`StringConcatNullEntity` `t`
ORDER BY
	`t`.`ID`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	`t1`.`ID`,
	`t1`.`Value1`,
	`t1`.`Value2`
FROM
	`StringConcatNullEntity` `t1`

