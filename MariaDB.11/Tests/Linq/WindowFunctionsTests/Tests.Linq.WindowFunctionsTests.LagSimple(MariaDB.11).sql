-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	`t`.`Id`,
	LAG(`t`.`IntValue`) OVER (ORDER BY `t`.`Id`)
FROM
	`WindowFunctionTestEntity` `t`

