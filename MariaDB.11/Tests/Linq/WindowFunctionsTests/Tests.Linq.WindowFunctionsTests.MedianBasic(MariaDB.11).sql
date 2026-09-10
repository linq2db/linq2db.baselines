-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`t`.`Id`,
	MEDIAN(`t`.`IntValue`) OVER (PARTITION BY `t`.`CategoryId`)
FROM
	`WindowFunctionTestEntity` `t`

