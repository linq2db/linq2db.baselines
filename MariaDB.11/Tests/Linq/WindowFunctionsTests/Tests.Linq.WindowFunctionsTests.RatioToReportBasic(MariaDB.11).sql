-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`t`.`Id`,
	CAST(`t`.`IntValue` AS DOUBLE) / NULLIF(CAST(SUM(`t`.`IntValue`) OVER (PARTITION BY `t`.`CategoryId`) AS DOUBLE), 0)
FROM
	`WindowFunctionTestEntity` `t`

