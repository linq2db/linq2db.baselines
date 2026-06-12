-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB

SELECT
	COUNT(`t`.`NullableIntValue`) OVER (PARTITION BY `t`.`CategoryId` ORDER BY `t`.`Id`)
FROM
	`WindowFunctionTestEntity` `t`

