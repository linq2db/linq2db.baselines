-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	`t`.`Id`,
	LEAD(`t`.`IntValue`) OVER (ORDER BY `t`.`Id`)
FROM
	`WindowFunctionTestEntity` `t`

