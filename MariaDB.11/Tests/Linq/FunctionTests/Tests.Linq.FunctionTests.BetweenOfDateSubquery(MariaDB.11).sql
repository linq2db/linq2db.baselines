-- MariaDB.11 MariaDB.10.MySqlConnector MariaDB
DECLARE @low Datetime -- DateTime
SET     @low = '2020-01-01 00:30:00'
DECLARE @high Datetime -- DateTime
SET     @high = '2020-01-03 00:30:00'

SELECT
	CASE
		WHEN `t1`.`maxDay` BETWEEN @low AND @high THEN 1
		ELSE 0
	END,
	CASE
		WHEN `t1`.`maxDay` >= @low AND `t1`.`maxDay` <= @high THEN 1
		ELSE 0
	END,
	CASE
		WHEN `t1`.`maxDay` NOT BETWEEN @low AND @high THEN 1
		ELSE 0
	END,
	CASE
		WHEN `t1`.`maxDay` < @low OR `t1`.`maxDay` > @high THEN 1
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
			) as `maxDay`
		FROM
			`BetweenDayRow` `r`
	) `t1`

