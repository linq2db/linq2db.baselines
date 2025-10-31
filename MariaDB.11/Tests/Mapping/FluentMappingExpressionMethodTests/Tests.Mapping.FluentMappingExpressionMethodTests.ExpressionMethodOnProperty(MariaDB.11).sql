-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	COUNT(*)
FROM
	`InstanceClass` `t`
WHERE
	Concat(CAST(`t`.`Id` AS CHAR(11)), CAST(`t`.`Value` AS CHAR(11))) = Concat(CAST(`t`.`Id` AS CHAR(11)), `t`.`Value`)

