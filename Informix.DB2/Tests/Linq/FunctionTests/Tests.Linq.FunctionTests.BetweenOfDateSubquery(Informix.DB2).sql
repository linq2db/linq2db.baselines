-- Informix.DB2 Informix
DECLARE @low Date(16)
SET     @low = TO_DATE('2020-01-01 00:30:00', '%Y-%m-%d %H:%M:%S')
DECLARE @high Date(16)
SET     @high = TO_DATE('2020-01-03 00:30:00', '%Y-%m-%d %H:%M:%S')

SELECT
	CASE
		WHEN t1.InRange BETWEEN @low::DATETIME YEAR TO DAY AND @high::DATETIME YEAR TO DAY
			THEN 't'::BOOLEAN
		ELSE 'f'::BOOLEAN
	END::BOOLEAN,
	CASE
		WHEN t1.InRange >= @low::DATETIME YEAR TO DAY AND t1.InRange <= @high::DATETIME YEAR TO DAY
			THEN 't'::BOOLEAN
		ELSE 'f'::BOOLEAN
	END::BOOLEAN,
	CASE
		WHEN t1.InRange NOT BETWEEN @low::DATETIME YEAR TO DAY AND @high::DATETIME YEAR TO DAY
			THEN 't'::BOOLEAN
		ELSE 'f'::BOOLEAN
	END::BOOLEAN,
	CASE
		WHEN t1.InRange < @low::DATETIME YEAR TO DAY OR t1.InRange > @high::DATETIME YEAR TO DAY
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
			) as InRange
		FROM
			BetweenDayRow r
	) t1

