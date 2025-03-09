BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql

SELECT
	COUNT(*)
FROM
	`InstanceClass` `t`
WHERE
	Concat(CAST(`t`.`Id` AS CHAR(255)), CAST(`t`.`Value` AS CHAR(255))) = Concat(CAST(`t`.`Id` AS CHAR(255)), `t`.`Value`)

