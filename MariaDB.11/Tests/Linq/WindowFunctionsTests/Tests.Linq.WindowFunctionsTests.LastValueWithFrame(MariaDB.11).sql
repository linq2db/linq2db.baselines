-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	`t`.`Id`,
	LAST_VALUE(`t`.`IntValue`) OVER (PARTITION BY `t`.`CategoryId` ORDER BY `t`.`Id` ROWS BETWEEN CURRENT ROW AND UNBOUNDED FOLLOWING)
FROM
	`WindowFunctionTestEntity` `t`

