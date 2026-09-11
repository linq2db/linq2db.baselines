-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
SELECT
	TimestampDiff(Microsecond, `t`.`StartedOn`, `t`.`FinishedOn`) * 10
FROM
	`NullableDateTimeSub` `t`
ORDER BY
	`t`.`Id`

