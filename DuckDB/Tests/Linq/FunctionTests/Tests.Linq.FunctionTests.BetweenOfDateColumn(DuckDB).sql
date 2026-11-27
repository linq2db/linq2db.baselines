-- DuckDB
DECLARE $low DATE -- Date
SET     $low = '2020-01-01 00:30:00.000000'::TIMESTAMP
DECLARE $high DATE -- Date
SET     $high = '2020-01-03 00:30:00.000000'::TIMESTAMP
DECLARE $low_1 TIMESTAMP -- DateTime2
SET     $low_1 = '2020-01-01 00:30:00.000000'::TIMESTAMP
DECLARE $high_1 TIMESTAMP -- DateTime2
SET     $high_1 = '2020-01-03 00:30:00.000000'::TIMESTAMP

SELECT
	r."Day" BETWEEN '2020-01-01'::DATE AND '2020-01-03'::DATE,
	r."Day" >= '2020-01-01'::DATE AND r."Day" <= '2020-01-03'::DATE,
	Coalesce(r.Other, r."Day") BETWEEN '2020-01-01 00:30:00.000000'::TIMESTAMP AND '2020-01-03 00:30:00.000000'::TIMESTAMP,
	Coalesce(r.Other, r."Day") >= '2020-01-01 00:30:00.000000'::TIMESTAMP AND Coalesce(r.Other, r."Day") <= '2020-01-03 00:30:00.000000'::TIMESTAMP,
	r."Day" BETWEEN $low AND $high,
	r."Day" >= $low AND r."Day" <= $high,
	Coalesce(d."Day", '0001-01-01'::DATE) BETWEEN '2020-01-01'::DATE AND '2020-01-03'::DATE,
	Coalesce(d."Day", '0001-01-01'::DATE) >= '2020-01-01'::DATE AND Coalesce(d."Day", '0001-01-01'::DATE) <= '2020-01-03'::DATE,
	r."Day" NOT BETWEEN $low AND $high,
	r."Day" < $low OR r."Day" > $high,
	r."Day" NOT BETWEEN '2020-01-01'::DATE AND '2020-01-03'::DATE,
	r."Day" < '2020-01-01'::DATE OR r."Day" > '2020-01-03'::DATE,
	Coalesce(d."Day", '0001-01-01'::DATE) NOT BETWEEN '2020-01-01'::DATE AND '2020-01-03'::DATE,
	Coalesce(d."Day", '0001-01-01'::DATE) < '2020-01-01'::DATE OR Coalesce(d."Day", '0001-01-01'::DATE) > '2020-01-03'::DATE,
	r.Stamp BETWEEN $low_1 AND $high_1,
	r.Stamp >= $low_1 AND r.Stamp <= $high_1
FROM
	BetweenDayRow r
		LEFT JOIN BetweenDayRow d ON d.Id = r.Id - 1

-- DuckDB
DECLARE $low DATE -- Date
SET     $low = '2020-01-01 00:30:00.000000'::TIMESTAMP
DECLARE $high DATE -- Date
SET     $high = '2020-01-03 00:30:00.000000'::TIMESTAMP

SELECT
	r.Id
FROM
	BetweenDayRow r
WHERE
	r."Day" BETWEEN $low AND $high
ORDER BY
	r.Id

-- DuckDB
DECLARE $low DATE -- Date
SET     $low = '2020-01-01 00:30:00.000000'::TIMESTAMP
DECLARE $high DATE -- Date
SET     $high = '2020-01-03 00:30:00.000000'::TIMESTAMP

SELECT
	r.Id
FROM
	BetweenDayRow r
WHERE
	r."Day" >= $low AND r."Day" <= $high
ORDER BY
	r.Id

-- DuckDB
SELECT
	r.Id
FROM
	BetweenDayRow r
WHERE
	r."Day" NOT BETWEEN '2020-01-01'::DATE AND '2020-01-03'::DATE
ORDER BY
	r.Id

-- DuckDB
SELECT
	r.Id
FROM
	BetweenDayRow r
WHERE
	r."Day" < '2020-01-01'::DATE OR r."Day" > '2020-01-03'::DATE
ORDER BY
	r.Id

