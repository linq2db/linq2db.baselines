-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	TIMESTAMPDIFF(MICROSECOND, `t`.`StartedOn`, `t`.`FinishedOn`) * 10
FROM
	`NullableDateTimeSub` `t`
ORDER BY
	`t`.`Id`

