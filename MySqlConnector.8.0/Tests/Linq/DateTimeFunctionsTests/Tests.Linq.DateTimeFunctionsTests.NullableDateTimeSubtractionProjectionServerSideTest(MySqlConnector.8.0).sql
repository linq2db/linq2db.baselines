-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
SELECT
	TimestampDiff(Microsecond, `t`.`StartedOn`, `t`.`FinishedOn`) * 10
FROM
	`NullableDateTimeSub` `t`
ORDER BY
	`t`.`Id`

