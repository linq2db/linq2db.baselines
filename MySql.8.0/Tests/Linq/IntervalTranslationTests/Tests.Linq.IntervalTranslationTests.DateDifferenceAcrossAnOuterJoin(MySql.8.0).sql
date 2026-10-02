-- MySql.8.0 MySql.8.0.MySql.Data MySql80
SELECT
	CAST(TimestampDiff(Microsecond, `x`.`StartedOn`, `b`.`FinishedOn`) * 10 AS DOUBLE) / 864000000000,
	CAST((TimestampDiff(Microsecond, `x`.`StartedOn`, `b`.`FinishedOn`) * 10) DIV 864000000000 AS SIGNED),
	CAST(((TimestampDiff(Microsecond, `x`.`StartedOn`, `b`.`FinishedOn`) * 10) DIV 36000000000) % 24 AS SIGNED),
	CAST(((TimestampDiff(Microsecond, `x`.`StartedOn`, `b`.`FinishedOn`) * 10) DIV 600000000) % 60 AS SIGNED),
	CAST(TimestampDiff(Microsecond, `b`.`FinishedOn`, `x`.`StartedOn`) * 10 AS DOUBLE) / 36000000000,
	CAST(((TimestampDiff(Microsecond, `b`.`FinishedOn`, `x`.`StartedOn`) * 10) DIV 36000000000) % 24 AS SIGNED)
FROM
	`OuterJoinLeft` `x`
		LEFT JOIN `OuterJoinRight` `b` ON `b`.`Id` = `x`.`Id`
ORDER BY
	`x`.`Id`

-- MySql.8.0 MySql.8.0.MySql.Data MySql80
SELECT
	`x`.`Id`
FROM
	`OuterJoinLeft` `x`
		LEFT JOIN `OuterJoinRight` `b` ON `b`.`Id` = `x`.`Id`
WHERE
	CAST(TimestampDiff(Microsecond, `x`.`StartedOn`, `b`.`FinishedOn`) * 10 AS DOUBLE) / 864000000000 > 1

-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @Hours Int32
SET     @Hours = 3

SELECT
	`x`.`Id`
FROM
	`OuterJoinLeft` `x`
		LEFT JOIN `OuterJoinRight` `b` ON `b`.`Id` = `x`.`Id`
WHERE
	CAST(((TimestampDiff(Microsecond, `x`.`StartedOn`, `b`.`FinishedOn`) * 10) DIV 36000000000) % 24 AS SIGNED) = @Hours

-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @Minutes Int32
SET     @Minutes = 15

SELECT
	`x`.`Id`
FROM
	`OuterJoinLeft` `x`
		LEFT JOIN `OuterJoinRight` `b` ON `b`.`Id` = `x`.`Id`
WHERE
	CAST(((TimestampDiff(Microsecond, `x`.`StartedOn`, `b`.`FinishedOn`) * 10) DIV 600000000) % 60 AS SIGNED) = @Minutes

-- MySql.8.0 MySql.8.0.MySql.Data MySql80
SELECT
	`x`.`Id`
FROM
	`OuterJoinLeft` `x`
		LEFT JOIN `OuterJoinRight` `b` ON `b`.`Id` = `x`.`Id`
WHERE
	CAST(TimestampDiff(Microsecond, `b`.`FinishedOn`, `x`.`StartedOn`) * 10 AS DOUBLE) / 36000000000 < -1

-- MySql.8.0 MySql.8.0.MySql.Data MySql80
DECLARE @Hours Int32
SET     @Hours = 3

SELECT
	`x`.`Id`
FROM
	`OuterJoinLeft` `x`
		LEFT JOIN `OuterJoinRight` `b` ON `b`.`Id` = `x`.`Id`
WHERE
	CAST(((TimestampDiff(Microsecond, `b`.`FinishedOn`, `x`.`StartedOn`) * 10) DIV 36000000000) % 24 AS SIGNED) = -@Hours

