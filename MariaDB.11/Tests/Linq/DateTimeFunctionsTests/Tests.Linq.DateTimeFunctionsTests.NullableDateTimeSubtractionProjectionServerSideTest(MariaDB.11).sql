-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
SELECT
	TimestampDiff(Microsecond, `t`.`StartedOn`, `t`.`FinishedOn`) * 10
FROM
	`NullableDateTimeSub` `t`
ORDER BY
	`t`.`Id`

