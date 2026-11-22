-- MySqlConnector.8.0 MySql.8.0.MySqlConnector MySql80
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
	`BetweenDayRow` `r`
		LEFT JOIN LATERAL (
			SELECT
				MAX(`x`.`Day`) as `InRange`
			FROM
				`BetweenDayRow` `x`
			WHERE
				`x`.`Id` = `r`.`Id`
		) `t1` ON 1=1

