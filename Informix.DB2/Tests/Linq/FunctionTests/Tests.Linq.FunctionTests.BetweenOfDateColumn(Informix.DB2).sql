-- Informix.DB2 Informix
DECLARE @low Date(16)
SET     @low = TO_DATE('2020-01-01 00:30:00', '%Y-%m-%d %H:%M:%S')
DECLARE @high Date(16)
SET     @high = TO_DATE('2020-01-03 00:30:00', '%Y-%m-%d %H:%M:%S')
DECLARE @low_1 Timestamp(16) -- DateTime
SET     @low_1 = TO_DATE('2020-01-01 00:30:00', '%Y-%m-%d %H:%M:%S')
DECLARE @high_1 Timestamp(16) -- DateTime
SET     @high_1 = TO_DATE('2020-01-03 00:30:00', '%Y-%m-%d %H:%M:%S')

SELECT
	t1.Day_1 BETWEEN TO_DATE('2020-01-01 00:30:00', '%Y-%m-%d %H:%M:%S') AND TO_DATE('2020-01-03 00:30:00', '%Y-%m-%d %H:%M:%S'),
	t1.Day_1 >= TO_DATE('2020-01-01 00:30:00', '%Y-%m-%d %H:%M:%S') AND t1.Day_1 <= TO_DATE('2020-01-03 00:30:00', '%Y-%m-%d %H:%M:%S'),
	Nvl(t1.Other, t1.Day_1) BETWEEN TO_DATE('2020-01-01 00:30:00', '%Y-%m-%d %H:%M:%S') AND TO_DATE('2020-01-03 00:30:00', '%Y-%m-%d %H:%M:%S'),
	Nvl(t1.Other, t1.Day_1) >= TO_DATE('2020-01-01 00:30:00', '%Y-%m-%d %H:%M:%S') AND Nvl(t1.Other, t1.Day_1) <= TO_DATE('2020-01-03 00:30:00', '%Y-%m-%d %H:%M:%S'),
	t1.Day_1 BETWEEN @low::DATETIME YEAR TO DAY AND @high::DATETIME YEAR TO DAY,
	t1.Day_1 >= @low::DATETIME YEAR TO DAY AND t1.Day_1 <= @high::DATETIME YEAR TO DAY,
	Nvl(t1.Day_2, TO_DATE('0001-01-01', '%Y-%m-%d')) BETWEEN TO_DATE('2020-01-01 00:30:00', '%Y-%m-%d %H:%M:%S') AND TO_DATE('2020-01-03 00:30:00', '%Y-%m-%d %H:%M:%S'),
	Nvl(t1.Day_2, TO_DATE('0001-01-01', '%Y-%m-%d')) >= TO_DATE('2020-01-01 00:30:00', '%Y-%m-%d %H:%M:%S') AND Nvl(t1.Day_2, TO_DATE('0001-01-01', '%Y-%m-%d')) <= TO_DATE('2020-01-03 00:30:00', '%Y-%m-%d %H:%M:%S'),
	t1.Day_1 NOT BETWEEN @low::DATETIME YEAR TO DAY AND @high::DATETIME YEAR TO DAY,
	t1.Day_1 < @low::DATETIME YEAR TO DAY OR t1.Day_1 > @high::DATETIME YEAR TO DAY,
	t1.Day_1 NOT BETWEEN TO_DATE('2020-01-01 00:30:00', '%Y-%m-%d %H:%M:%S') AND TO_DATE('2020-01-03 00:30:00', '%Y-%m-%d %H:%M:%S'),
	t1.Day_1 < TO_DATE('2020-01-01 00:30:00', '%Y-%m-%d %H:%M:%S') OR t1.Day_1 > TO_DATE('2020-01-03 00:30:00', '%Y-%m-%d %H:%M:%S'),
	Nvl(t1.Day_2, TO_DATE('0001-01-01', '%Y-%m-%d')) NOT BETWEEN TO_DATE('2020-01-01 00:30:00', '%Y-%m-%d %H:%M:%S') AND TO_DATE('2020-01-03 00:30:00', '%Y-%m-%d %H:%M:%S'),
	Nvl(t1.Day_2, TO_DATE('0001-01-01', '%Y-%m-%d')) < TO_DATE('2020-01-01 00:30:00', '%Y-%m-%d %H:%M:%S') OR Nvl(t1.Day_2, TO_DATE('0001-01-01', '%Y-%m-%d')) > TO_DATE('2020-01-03 00:30:00', '%Y-%m-%d %H:%M:%S'),
	CASE
		WHEN t1.Subquery BETWEEN @low::DATETIME YEAR TO DAY AND @high::DATETIME YEAR TO DAY
			THEN 't'::BOOLEAN
		ELSE 'f'::BOOLEAN
	END::BOOLEAN,
	CASE
		WHEN t1.Subquery >= @low::DATETIME YEAR TO DAY AND t1.Subquery <= @high::DATETIME YEAR TO DAY
			THEN 't'::BOOLEAN
		ELSE 'f'::BOOLEAN
	END::BOOLEAN,
	t1.Stamp BETWEEN @low_1::datetime year to fraction(5) AND @high_1::datetime year to fraction(5),
	t1.Stamp >= @low_1::datetime year to fraction(5) AND t1.Stamp <= @high_1::datetime year to fraction(5)
FROM
	(
		SELECT
			r."Day" as Day_1,
			r.Other,
			d."Day" as Day_2,
			(
				SELECT
					MAX(x."Day")
				FROM
					BetweenDayRow x
				WHERE
					x.Id = r.Id
			) as Subquery,
			r.Stamp
		FROM
			BetweenDayRow r
				LEFT JOIN BetweenDayRow d ON d.Id = r.Id - 1
	) t1

-- Informix.DB2 Informix
DECLARE @low Date(16)
SET     @low = TO_DATE('2020-01-01 00:30:00', '%Y-%m-%d %H:%M:%S')
DECLARE @high Date(16)
SET     @high = TO_DATE('2020-01-03 00:30:00', '%Y-%m-%d %H:%M:%S')

SELECT
	r.Id
FROM
	BetweenDayRow r
WHERE
	r."Day" BETWEEN @low AND @high
ORDER BY
	r.Id

-- Informix.DB2 Informix
DECLARE @low Date(16)
SET     @low = TO_DATE('2020-01-01 00:30:00', '%Y-%m-%d %H:%M:%S')
DECLARE @high Date(16)
SET     @high = TO_DATE('2020-01-03 00:30:00', '%Y-%m-%d %H:%M:%S')

SELECT
	r.Id
FROM
	BetweenDayRow r
WHERE
	r."Day" >= @low AND r."Day" <= @high
ORDER BY
	r.Id

-- Informix.DB2 Informix
SELECT
	r.Id
FROM
	BetweenDayRow r
WHERE
	r."Day" NOT BETWEEN TO_DATE('2020-01-01 00:30:00', '%Y-%m-%d %H:%M:%S') AND TO_DATE('2020-01-03 00:30:00', '%Y-%m-%d %H:%M:%S')
ORDER BY
	r.Id

-- Informix.DB2 Informix
SELECT
	r.Id
FROM
	BetweenDayRow r
WHERE
	r."Day" < TO_DATE('2020-01-01 00:30:00', '%Y-%m-%d %H:%M:%S') OR
	r."Day" > TO_DATE('2020-01-03 00:30:00', '%Y-%m-%d %H:%M:%S')
ORDER BY
	r.Id

