-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
SELECT
	CAST(TimestampDiff(Microsecond, `x`.`StartedOn`, `b`.`FinishedOn`) * 10 AS DECIMAL(29, 10)) / 864000000000,
	CAST((TimestampDiff(Microsecond, `x`.`StartedOn`, `b`.`FinishedOn`) * 10) DIV 864000000000 AS SIGNED),
	CAST(((TimestampDiff(Microsecond, `x`.`StartedOn`, `b`.`FinishedOn`) * 10) DIV 36000000000) % 24 AS SIGNED),
	CAST(((TimestampDiff(Microsecond, `x`.`StartedOn`, `b`.`FinishedOn`) * 10) DIV 600000000) % 60 AS SIGNED),
	CAST(TimestampDiff(Microsecond, `b`.`FinishedOn`, `x`.`StartedOn`) * 10 AS DECIMAL(29, 10)) / 36000000000,
	CAST(((TimestampDiff(Microsecond, `b`.`FinishedOn`, `x`.`StartedOn`) * 10) DIV 36000000000) % 24 AS SIGNED)
FROM
	`OuterJoinLeft` `x`
		LEFT JOIN `OuterJoinRight` `b` ON `b`.`Id` = `x`.`Id`
ORDER BY
	`x`.`Id`

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
SELECT
	`x`.`Id`
FROM
	`OuterJoinLeft` `x`
		LEFT JOIN `OuterJoinRight` `b` ON `b`.`Id` = `x`.`Id`
WHERE
	CAST(TimestampDiff(Microsecond, `x`.`StartedOn`, `b`.`FinishedOn`) * 10 AS DECIMAL(29, 10)) / 864000000000 > 1

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @Hours Int32
SET     @Hours = 3

SELECT
	`x`.`Id`
FROM
	`OuterJoinLeft` `x`
		LEFT JOIN `OuterJoinRight` `b` ON `b`.`Id` = `x`.`Id`
WHERE
	CAST(((TimestampDiff(Microsecond, `x`.`StartedOn`, `b`.`FinishedOn`) * 10) DIV 36000000000) % 24 AS SIGNED) = @Hours

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @Minutes Int32
SET     @Minutes = 15

SELECT
	`x`.`Id`
FROM
	`OuterJoinLeft` `x`
		LEFT JOIN `OuterJoinRight` `b` ON `b`.`Id` = `x`.`Id`
WHERE
	CAST(((TimestampDiff(Microsecond, `x`.`StartedOn`, `b`.`FinishedOn`) * 10) DIV 600000000) % 60 AS SIGNED) = @Minutes

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
SELECT
	`x`.`Id`
FROM
	`OuterJoinLeft` `x`
		LEFT JOIN `OuterJoinRight` `b` ON `b`.`Id` = `x`.`Id`
WHERE
	CAST(TimestampDiff(Microsecond, `b`.`FinishedOn`, `x`.`StartedOn`) * 10 AS DECIMAL(29, 10)) / 36000000000 < -1

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @Hours Int32
SET     @Hours = 3

SELECT
	`x`.`Id`
FROM
	`OuterJoinLeft` `x`
		LEFT JOIN `OuterJoinRight` `b` ON `b`.`Id` = `x`.`Id`
WHERE
	CAST(((TimestampDiff(Microsecond, `b`.`FinishedOn`, `x`.`StartedOn`) * 10) DIV 36000000000) % 24 AS SIGNED) = -@Hours

