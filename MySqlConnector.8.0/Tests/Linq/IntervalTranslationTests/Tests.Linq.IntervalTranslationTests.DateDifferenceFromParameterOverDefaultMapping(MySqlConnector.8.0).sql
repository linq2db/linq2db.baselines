-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @asOf Datetime -- DateTime
SET     @asOf = '2026-01-10 08:15:30'

SELECT
	`r`.`Id`
FROM
	`Issue5777Row` `r`
WHERE
	CAST(TimestampDiff(Microsecond, `r`.`ClosedOn`, @asOf) * 10 AS DOUBLE) / 864000000000 > 0

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @asOf Datetime -- DateTime
SET     @asOf = '2026-01-10 08:15:30'

SELECT
	`r`.`Id`
FROM
	`Issue5777Row` `r`
WHERE
	CAST(TimestampDiff(Microsecond, @asOf, `r`.`ClosedOn`) * 10 AS DOUBLE) / 36000000000 > 0

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @asOf Datetime -- DateTime
SET     @asOf = '2026-01-10 08:15:30'

SELECT
	`r`.`Id`
FROM
	`Issue5777Row` `r`
ORDER BY
	CAST(TimestampDiff(Microsecond, `r`.`ClosedOn`, @asOf) * 10 AS DOUBLE) / 600000000

-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
DECLARE @asOf Datetime -- DateTime
SET     @asOf = '2026-01-10 08:15:30'

SELECT
	CAST(TimestampDiff(Microsecond, @asOf, `r`.`ClosedOn`) * 10 AS DOUBLE) / 36000000000
FROM
	`Issue5777Row` `r`
WHERE
	`r`.`Id` = 1
LIMIT 2

