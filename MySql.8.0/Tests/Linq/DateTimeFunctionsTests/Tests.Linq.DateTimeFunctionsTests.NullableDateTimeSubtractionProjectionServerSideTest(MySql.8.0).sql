-- MySql.8.0 MySql.8.0.MySql.Data MySql80
SELECT
	TimestampDiff(Microsecond, `t`.`StartedOn`, `t`.`FinishedOn`) * 10
FROM
	`NullableDateTimeSub` `t`
ORDER BY
	`t`.`Id`

