-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @low Datetime -- DateTime
SET     @low = '2020-01-01 00:30:00'
DECLARE @high Datetime -- DateTime
SET     @high = '2020-01-03 00:30:00'
DECLARE @low_1 Datetime -- DateTime
SET     @low_1 = '2020-01-01 00:30:00'
DECLARE @high_1 Datetime -- DateTime
SET     @high_1 = '2020-01-03 00:30:00'

SELECT
	`r`.`Day` BETWEEN '2020-01-01 00:30:00' AND '2020-01-03 00:30:00',
	`r`.`Day` >= '2020-01-01 00:30:00' AND `r`.`Day` <= '2020-01-03 00:30:00',
	Coalesce(`r`.`Other`, `r`.`Day`) BETWEEN '2020-01-01 00:30:00' AND '2020-01-03 00:30:00',
	Coalesce(`r`.`Other`, `r`.`Day`) >= '2020-01-01 00:30:00' AND Coalesce(`r`.`Other`, `r`.`Day`) <= '2020-01-03 00:30:00',
	`r`.`Day` BETWEEN @low AND @high,
	`r`.`Day` >= @low AND `r`.`Day` <= @high,
	Coalesce(`d`.`Day`, '0001-01-01') BETWEEN '2020-01-01 00:30:00' AND '2020-01-03 00:30:00',
	Coalesce(`d`.`Day`, '0001-01-01') >= '2020-01-01 00:30:00' AND Coalesce(`d`.`Day`, '0001-01-01') <= '2020-01-03 00:30:00',
	`r`.`Day` NOT BETWEEN @low AND @high,
	`r`.`Day` < @low OR `r`.`Day` > @high,
	`r`.`Day` NOT BETWEEN '2020-01-01 00:30:00' AND '2020-01-03 00:30:00',
	`r`.`Day` < '2020-01-01 00:30:00' OR `r`.`Day` > '2020-01-03 00:30:00',
	Coalesce(`d`.`Day`, '0001-01-01') NOT BETWEEN '2020-01-01 00:30:00' AND '2020-01-03 00:30:00',
	Coalesce(`d`.`Day`, '0001-01-01') < '2020-01-01 00:30:00' OR Coalesce(`d`.`Day`, '0001-01-01') > '2020-01-03 00:30:00',
	`r`.`Stamp` BETWEEN @low_1 AND @high_1,
	`r`.`Stamp` >= @low_1 AND `r`.`Stamp` <= @high_1
FROM
	`BetweenDayRow` `r`
		LEFT JOIN `BetweenDayRow` `d` ON `d`.`Id` = `r`.`Id` - 1

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @low Datetime -- DateTime
SET     @low = '2020-01-01 00:30:00'
DECLARE @high Datetime -- DateTime
SET     @high = '2020-01-03 00:30:00'

SELECT
	`r`.`Id`
FROM
	`BetweenDayRow` `r`
WHERE
	`r`.`Day` BETWEEN @low AND @high
ORDER BY
	`r`.`Id`

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
DECLARE @low Datetime -- DateTime
SET     @low = '2020-01-01 00:30:00'
DECLARE @high Datetime -- DateTime
SET     @high = '2020-01-03 00:30:00'

SELECT
	`r`.`Id`
FROM
	`BetweenDayRow` `r`
WHERE
	`r`.`Day` >= @low AND `r`.`Day` <= @high
ORDER BY
	`r`.`Id`

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
SELECT
	`r`.`Id`
FROM
	`BetweenDayRow` `r`
WHERE
	`r`.`Day` NOT BETWEEN '2020-01-01 00:30:00' AND '2020-01-03 00:30:00'
ORDER BY
	`r`.`Id`

-- MySqlConnector.5.7 MySql.5.7.MySqlConnector MySql57
SELECT
	`r`.`Id`
FROM
	`BetweenDayRow` `r`
WHERE
	`r`.`Day` < '2020-01-01 00:30:00' OR `r`.`Day` > '2020-01-03 00:30:00'
ORDER BY
	`r`.`Id`

