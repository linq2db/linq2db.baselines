-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	`t`.`Id`,
	COUNT(`t`.`IntValue` = 20) OVER (PARTITION BY `t`.`CategoryId`),
	COUNT(`t`.`IntValue`) OVER (PARTITION BY `t`.`CategoryId`)
FROM
	`WindowFunctionTestEntity` `t`
ORDER BY
	`t`.`Id`

