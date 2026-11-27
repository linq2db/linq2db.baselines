-- YDB Ydb
DECLARE none Timestamp -- DateTime2
SET     none = NULL
DECLARE later Timestamp -- DateTime2
SET     later = Timestamp('2020-01-03T00:00:00.000000Z')

SELECT
	r.Id as Id
FROM
	BetweenDayRow r
WHERE
	$none BETWEEN r.`Day` AND $later

-- YDB Ydb
DECLARE none Timestamp -- DateTime2
SET     none = NULL
DECLARE later Timestamp -- DateTime2
SET     later = Timestamp('2020-01-03T00:00:00.000000Z')

SELECT
	r.Id as Id
FROM
	BetweenDayRow r
WHERE
	$none NOT BETWEEN r.`Day` AND $later

-- YDB Ydb
DECLARE none Timestamp -- DateTime2
SET     none = NULL
DECLARE later Timestamp -- DateTime2
SET     later = Timestamp('2020-01-03T00:00:00.000000Z')

SELECT
	r.Id as Id
FROM
	BetweenDayRow r
WHERE
	$none NOT BETWEEN r.Stamp AND $later

-- YDB Ydb
DECLARE none Timestamp -- DateTime2
SET     none = NULL
DECLARE later Timestamp -- DateTime2
SET     later = Timestamp('2020-01-03T00:00:00.000000Z')

SELECT
	r.Id as Id
FROM
	BetweenDayRow r
WHERE
	$none NOT BETWEEN r.`Day` AND $later

-- YDB Ydb
DECLARE none Timestamp -- DateTime2
SET     none = NULL
DECLARE later Timestamp -- DateTime2
SET     later = Timestamp('2020-01-03T00:00:00.000000Z')

SELECT
	r.Id as Id
FROM
	BetweenDayRow r
WHERE
	$none NOT BETWEEN r.Stamp AND $later

-- YDB Ydb
DECLARE value Timestamp -- DateTime2
SET     value = Timestamp('2020-01-02T12:00:00.000000Z')
DECLARE none Timestamp -- DateTime2
SET     none = NULL

SELECT
	r.Id as Id
FROM
	BetweenDayRow r
WHERE
	$value NOT BETWEEN r.`Day` AND $none

-- YDB Ydb
DECLARE none Timestamp -- DateTime2
SET     none = NULL
DECLARE high Timestamp -- DateTime2
SET     high = Timestamp('2020-01-03T00:00:00.000000Z')

SELECT
	r.Id as Id
FROM
	BetweenDayRow r
WHERE
	$none NOT BETWEEN r.`Day` AND $high

-- YDB Ydb
DECLARE some Timestamp -- DateTime2
SET     some = Timestamp('2020-01-02T12:00:00.000000Z')
DECLARE none Timestamp -- DateTime2
SET     none = NULL

SELECT
	r.Id as Id
FROM
	BetweenDayRow r
WHERE
	$some NOT BETWEEN r.`Day` AND $none

-- YDB Ydb
DECLARE none Timestamp -- DateTime2
SET     none = NULL
DECLARE later Timestamp -- DateTime2
SET     later = Timestamp('2020-01-03T00:00:00.000000Z')

SELECT
	CASE
		WHEN $none NOT BETWEEN r.`Day` AND $later THEN 'a'u
		ELSE 'b'u
	END as c1
FROM
	BetweenDayRow r
ORDER BY
	r.Id

