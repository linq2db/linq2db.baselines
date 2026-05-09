-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	Concat(`t`.`VarCharColumn`, '...')
FROM
	`StringTrimTable` `t`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	`t1`.`Id`,
	`t1`.`CharColumn`,
	`t1`.`NCharColumn`,
	`t1`.`VarCharColumn`,
	`t1`.`NVarCharColumn`
FROM
	`StringTrimTable` `t1`

