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
	r."Day" BETWEEN TO_DATE('2020-01-01 00:30:00', '%Y-%m-%d %H:%M:%S') AND TO_DATE('2020-01-03 00:30:00', '%Y-%m-%d %H:%M:%S'),
	r."Day" >= TO_DATE('2020-01-01 00:30:00', '%Y-%m-%d %H:%M:%S') AND r."Day" <= TO_DATE('2020-01-03 00:30:00', '%Y-%m-%d %H:%M:%S'),
	Nvl(r.Other, r."Day") BETWEEN TO_DATE('2020-01-01 00:30:00', '%Y-%m-%d %H:%M:%S') AND TO_DATE('2020-01-03 00:30:00', '%Y-%m-%d %H:%M:%S'),
	Nvl(r.Other, r."Day") >= TO_DATE('2020-01-01 00:30:00', '%Y-%m-%d %H:%M:%S') AND Nvl(r.Other, r."Day") <= TO_DATE('2020-01-03 00:30:00', '%Y-%m-%d %H:%M:%S'),
	r."Day" BETWEEN @low::DATETIME YEAR TO DAY AND @high::DATETIME YEAR TO DAY,
	r."Day" >= @low::DATETIME YEAR TO DAY AND r."Day" <= @high::DATETIME YEAR TO DAY,
	Nvl(d."Day", TO_DATE('0001-01-01', '%Y-%m-%d')) BETWEEN TO_DATE('2020-01-01 00:30:00', '%Y-%m-%d %H:%M:%S') AND TO_DATE('2020-01-03 00:30:00', '%Y-%m-%d %H:%M:%S'),
	Nvl(d."Day", TO_DATE('0001-01-01', '%Y-%m-%d')) >= TO_DATE('2020-01-01 00:30:00', '%Y-%m-%d %H:%M:%S') AND Nvl(d."Day", TO_DATE('0001-01-01', '%Y-%m-%d')) <= TO_DATE('2020-01-03 00:30:00', '%Y-%m-%d %H:%M:%S'),
	r."Day" NOT BETWEEN @low::DATETIME YEAR TO DAY AND @high::DATETIME YEAR TO DAY,
	r."Day" < @low::DATETIME YEAR TO DAY OR r."Day" > @high::DATETIME YEAR TO DAY,
	r."Day" NOT BETWEEN TO_DATE('2020-01-01 00:30:00', '%Y-%m-%d %H:%M:%S') AND TO_DATE('2020-01-03 00:30:00', '%Y-%m-%d %H:%M:%S'),
	r."Day" < TO_DATE('2020-01-01 00:30:00', '%Y-%m-%d %H:%M:%S') OR r."Day" > TO_DATE('2020-01-03 00:30:00', '%Y-%m-%d %H:%M:%S'),
	Nvl(d."Day", TO_DATE('0001-01-01', '%Y-%m-%d')) NOT BETWEEN TO_DATE('2020-01-01 00:30:00', '%Y-%m-%d %H:%M:%S') AND TO_DATE('2020-01-03 00:30:00', '%Y-%m-%d %H:%M:%S'),
	Nvl(d."Day", TO_DATE('0001-01-01', '%Y-%m-%d')) < TO_DATE('2020-01-01 00:30:00', '%Y-%m-%d %H:%M:%S') OR Nvl(d."Day", TO_DATE('0001-01-01', '%Y-%m-%d')) > TO_DATE('2020-01-03 00:30:00', '%Y-%m-%d %H:%M:%S'),
	r.Stamp BETWEEN @low_1::datetime year to fraction(5) AND @high_1::datetime year to fraction(5),
	r.Stamp >= @low_1::datetime year to fraction(5) AND r.Stamp <= @high_1::datetime year to fraction(5)
FROM
	BetweenDayRow r
		LEFT JOIN BetweenDayRow d ON d.Id = r.Id - 1

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

