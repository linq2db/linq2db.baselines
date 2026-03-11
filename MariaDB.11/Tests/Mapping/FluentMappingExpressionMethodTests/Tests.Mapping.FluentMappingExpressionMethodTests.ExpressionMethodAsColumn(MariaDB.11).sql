-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	`t1`.`Id`,
	`t1`.`Value`,
	Concat('M', CAST(`t1`.`Id` AS CHAR(11)))
FROM
	`InstanceClass` `t1`

