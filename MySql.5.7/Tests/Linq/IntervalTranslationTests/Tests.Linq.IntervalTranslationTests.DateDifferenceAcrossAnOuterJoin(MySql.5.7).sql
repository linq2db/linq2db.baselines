-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	CAST(TimestampDiff(Microsecond, `x`.`StartedOn`, `b`.`FinishedOn`) * 10 AS DECIMAL(29, 10)) / 864000000000,
	CAST((TimestampDiff(Microsecond, `x`.`StartedOn`, `b`.`FinishedOn`) * 10) DIV 864000000000 AS SIGNED)
FROM
	`OuterJoinLeft` `x`
		LEFT JOIN `OuterJoinRight` `b` ON `b`.`Id` = `x`.`Id`
ORDER BY
	`x`.`Id`

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	`x`.`Id`
FROM
	`OuterJoinLeft` `x`
		LEFT JOIN `OuterJoinRight` `b` ON `b`.`Id` = `x`.`Id`
WHERE
	CAST(TimestampDiff(Microsecond, `x`.`StartedOn`, `b`.`FinishedOn`) * 10 AS DECIMAL(29, 10)) / 864000000000 > 1

