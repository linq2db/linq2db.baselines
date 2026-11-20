-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @low Datetime -- DateTime
SET     @low = '2020-01-01 00:30:00'
DECLARE @high Datetime -- DateTime
SET     @high = '2020-01-03 00:30:00'
DECLARE @low_1 Datetime -- DateTime
SET     @low_1 = '2020-01-01 00:30:00'
DECLARE @high_1 Datetime -- DateTime
SET     @high_1 = '2020-01-03 00:30:00'

SELECT
	`t1`.`Day_1` BETWEEN '2020-01-01 00:30:00' AND '2020-01-03 00:30:00',
	`t1`.`Day_1` >= '2020-01-01 00:30:00' AND `t1`.`Day_1` <= '2020-01-03 00:30:00',
	Coalesce(`t1`.`Other`, `t1`.`Day_1`) BETWEEN '2020-01-01 00:30:00' AND '2020-01-03 00:30:00',
	Coalesce(`t1`.`Other`, `t1`.`Day_1`) >= '2020-01-01 00:30:00' AND Coalesce(`t1`.`Other`, `t1`.`Day_1`) <= '2020-01-03 00:30:00',
	`t1`.`Day_1` BETWEEN @low AND @high,
	`t1`.`Day_1` >= @low AND `t1`.`Day_1` <= @high,
	Coalesce(`t1`.`Day_2`, '0001-01-01') BETWEEN '2020-01-01 00:30:00' AND '2020-01-03 00:30:00',
	Coalesce(`t1`.`Day_2`, '0001-01-01') >= '2020-01-01 00:30:00' AND Coalesce(`t1`.`Day_2`, '0001-01-01') <= '2020-01-03 00:30:00',
	`t1`.`Day_1` NOT BETWEEN @low AND @high,
	`t1`.`Day_1` < @low OR `t1`.`Day_1` > @high,
	`t1`.`Day_1` NOT BETWEEN '2020-01-01 00:30:00' AND '2020-01-03 00:30:00',
	`t1`.`Day_1` < '2020-01-01 00:30:00' OR `t1`.`Day_1` > '2020-01-03 00:30:00',
	Coalesce(`t1`.`Day_2`, '0001-01-01') NOT BETWEEN '2020-01-01 00:30:00' AND '2020-01-03 00:30:00',
	Coalesce(`t1`.`Day_2`, '0001-01-01') < '2020-01-01 00:30:00' OR Coalesce(`t1`.`Day_2`, '0001-01-01') > '2020-01-03 00:30:00',
	CASE
		WHEN `t1`.`Subquery` BETWEEN @low AND @high THEN 1
		ELSE 0
	END,
	CASE
		WHEN `t1`.`Subquery` >= @low AND `t1`.`Subquery` <= @high
			THEN 1
		ELSE 0
	END,
	`t1`.`Stamp` BETWEEN @low_1 AND @high_1,
	`t1`.`Stamp` >= @low_1 AND `t1`.`Stamp` <= @high_1
FROM
	(
		SELECT
			`r`.`Day` as `Day_1`,
			`r`.`Other`,
			`d`.`Day` as `Day_2`,
			(
				SELECT
					MAX(`x`.`Day`)
				FROM
					`BetweenDayRow` `x`
				WHERE
					`x`.`Id` = `r`.`Id`
			) as `Subquery`,
			`r`.`Stamp`
		FROM
			`BetweenDayRow` `r`
				LEFT JOIN `BetweenDayRow` `d` ON `d`.`Id` = `r`.`Id` - 1
	) `t1`

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
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

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
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

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	`r`.`Id`
FROM
	`BetweenDayRow` `r`
WHERE
	`r`.`Day` NOT BETWEEN '2020-01-01 00:30:00' AND '2020-01-03 00:30:00'
ORDER BY
	`r`.`Id`

-- MySql.5.7 MySql.5.7.MySql.Data MySql57
SELECT
	`r`.`Id`
FROM
	`BetweenDayRow` `r`
WHERE
	`r`.`Day` < '2020-01-01 00:30:00' OR `r`.`Day` > '2020-01-03 00:30:00'
ORDER BY
	`r`.`Id`

