-- ClickHouse.Driver ClickHouse
SELECT
	r.Id
FROM
	BetweenDayRow r
WHERE
	NULL BETWEEN r.Day AND toDateTime64('2020-01-03 00:00:00.0000000', 7)

-- ClickHouse.Driver ClickHouse
SELECT
	r.Id
FROM
	BetweenDayRow r
WHERE
	NULL NOT BETWEEN r.Day AND toDateTime64('2020-01-03 00:00:00.0000000', 7)

-- ClickHouse.Driver ClickHouse
SELECT
	r.Id
FROM
	BetweenDayRow r
WHERE
	NULL NOT BETWEEN r.Stamp AND toDateTime64('2020-01-03 00:00:00.0000000', 7)

-- ClickHouse.Driver ClickHouse
SELECT
	r.Id
FROM
	BetweenDayRow r
WHERE
	NULL NOT BETWEEN r.Day AND toDateTime64('2020-01-03 00:00:00.0000000', 7)

-- ClickHouse.Driver ClickHouse
SELECT
	r.Id
FROM
	BetweenDayRow r
WHERE
	NULL NOT BETWEEN r.Stamp AND toDateTime64('2020-01-03 00:00:00.0000000', 7)

-- ClickHouse.Driver ClickHouse
SELECT
	r.Id
FROM
	BetweenDayRow r
WHERE
	toDateTime64('2020-01-02 12:00:00.0000000', 7) NOT BETWEEN r.Day AND NULL

-- ClickHouse.Driver ClickHouse
SELECT
	r.Id
FROM
	BetweenDayRow r
WHERE
	NULL NOT BETWEEN r.Day AND toDateTime64('2020-01-03 00:00:00.0000000', 7)

-- ClickHouse.Driver ClickHouse
SELECT
	r.Id
FROM
	BetweenDayRow r
WHERE
	toDateTime64('2020-01-02 12:00:00.0000000', 7) NOT BETWEEN r.Day AND NULL

-- ClickHouse.Driver ClickHouse
SELECT
	CASE
		WHEN NULL NOT BETWEEN r.Day AND toDateTime64('2020-01-03 00:00:00.0000000', 7)
			THEN 'a'
		ELSE 'b'
	END
FROM
	BetweenDayRow r
ORDER BY
	r.Id

