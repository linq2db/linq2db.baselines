-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	`t`.`Id`,
	AVG(CASE
		WHEN `t`.`CategoryId` = 1 THEN `t`.`DoubleValue`
		ELSE NULL
	END) OVER (PARTITION BY `t`.`CategoryId` ORDER BY `t`.`Id`)
FROM
	`WindowFunctionTestEntity` `t`

