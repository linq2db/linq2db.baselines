-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	COUNT(*) OVER (PARTITION BY `t`.`CategoryId` ORDER BY `t`.`Id`),
	COUNT(*) OVER (ORDER BY `t`.`Id`)
FROM
	`WindowFunctionTestEntity` `t`

