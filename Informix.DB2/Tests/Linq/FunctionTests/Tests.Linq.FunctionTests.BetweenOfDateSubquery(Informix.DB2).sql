-- Informix.DB2 Informix
DECLARE @low Date(16)
SET     @low = TO_DATE('2020-01-01 00:30:00', '%Y-%m-%d %H:%M:%S')
DECLARE @high Date(16)
SET     @high = TO_DATE('2020-01-03 00:30:00', '%Y-%m-%d %H:%M:%S')

SELECT
	CASE
		WHEN t1.maxDay BETWEEN @low::DATETIME YEAR TO DAY AND @high::DATETIME YEAR TO DAY
			THEN 't'::BOOLEAN
		ELSE 'f'::BOOLEAN
	END::BOOLEAN,
	CASE
		WHEN t1.maxDay >= @low::DATETIME YEAR TO DAY AND t1.maxDay <= @high::DATETIME YEAR TO DAY
			THEN 't'::BOOLEAN
		ELSE 'f'::BOOLEAN
	END::BOOLEAN,
	CASE
		WHEN t1.maxDay NOT BETWEEN @low::DATETIME YEAR TO DAY AND @high::DATETIME YEAR TO DAY
			THEN 't'::BOOLEAN
		ELSE 'f'::BOOLEAN
	END::BOOLEAN,
	CASE
		WHEN t1.maxDay < @low::DATETIME YEAR TO DAY OR t1.maxDay > @high::DATETIME YEAR TO DAY
			THEN 't'::BOOLEAN
		ELSE 'f'::BOOLEAN
	END::BOOLEAN
FROM
	(
		SELECT
			(
				SELECT
					MAX(x."Day")
				FROM
					BetweenDayRow x
				WHERE
					x.Id = r.Id
			) as maxDay
		FROM
			BetweenDayRow r
	) t1

