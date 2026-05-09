-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	Concat(Coalesce(`t`.`Value1`, ''), Coalesce(`t`.`Value2`, ''), Coalesce(`t`.`Value3`, ''))
FROM
	`StringConcatThreeNullEntity` `t`
ORDER BY
	`t`.`ID`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	`t1`.`ID`,
	`t1`.`Value1`,
	`t1`.`Value2`,
	`t1`.`Value3`
FROM
	`StringConcatThreeNullEntity` `t1`

