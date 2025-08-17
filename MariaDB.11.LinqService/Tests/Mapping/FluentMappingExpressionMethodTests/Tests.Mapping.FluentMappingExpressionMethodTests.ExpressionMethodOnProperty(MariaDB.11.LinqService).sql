BeforeExecute
-- MariaDB.11 MariaDB.10.MySqlConnector MySql (asynchronously)

SELECT
	COUNT(*)
FROM
	`InstanceClass` `t`
WHERE
	Concat(CAST(`t`.`Id` AS CHAR(11)), CAST(`t`.`Value` AS CHAR(11))) = Concat(CAST(`t`.`Id` AS CHAR(11)), `t`.`Value`)

