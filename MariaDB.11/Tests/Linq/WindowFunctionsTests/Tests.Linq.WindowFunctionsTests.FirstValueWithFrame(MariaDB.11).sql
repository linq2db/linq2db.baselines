-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	`t`.`Id`,
	FIRST_VALUE(`t`.`IntValue`) OVER (PARTITION BY `t`.`CategoryId` ORDER BY `t`.`Id` ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW)
FROM
	`WindowFunctionTestEntity` `t`

