-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`t1`.`Id`,
	`t1`.`Value1`
FROM
	`NullableLeftJoinTable` `t1`

-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`l`.`Value1`
FROM
	`NullableLeftJoinTable` `p`
		LEFT JOIN `NullableLeftJoinTable` `l` ON `l`.`Id` = `p`.`Id` + 1

