-- MySql.5.7 MySql.5.7.MySql.Data MySql57
DECLARE @low Datetime -- DateTime
SET     @low = '2020-01-01 00:30:00'
DECLARE @high Datetime -- DateTime
SET     @high = '2020-01-03 00:30:00'

SELECT
	CASE
		WHEN `t1`.`InRange` BETWEEN @low AND @high THEN 1
		ELSE 0
	END,
	CASE
		WHEN `t1`.`InRange` >= @low AND `t1`.`InRange` <= @high THEN 1
		ELSE 0
	END,
	CASE
		WHEN `t1`.`InRange` NOT BETWEEN @low AND @high THEN 1
		ELSE 0
	END,
	CASE
		WHEN `t1`.`InRange` < @low OR `t1`.`InRange` > @high THEN 1
		ELSE 0
	END
FROM
	(
		SELECT
			(
				SELECT
					MAX(`x`.`Day`)
				FROM
					`BetweenDayRow` `x`
				WHERE
					`x`.`Id` = `r`.`Id`
			) as `InRange`
		FROM
			`BetweenDayRow` `r`
	) `t1`

