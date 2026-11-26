-- ClickHouse.MySql ClickHouse
SELECT
	toDateTime64('2020-01-02 12:00:00.0000000', 7) BETWEEN r.Day AND toDateTime64('2020-01-02 06:00:00.0000000', 7),
	false,
	toDateTime64('2020-01-02 12:00:00.0000000', 7) NOT BETWEEN r.Day AND toDateTime64('2020-01-02 06:00:00.0000000', 7),
	true,
	toDateTime64('2020-01-02 12:00:00.0000000', 7) BETWEEN r.Day AND r.Stamp,
	toDate('2020-01-02') >= r.Day AND toDateTime64('2020-01-02 12:00:00.0000000', 7) <= r.Stamp,
	CASE
		WHEN toDateTime64('2020-01-02 12:00:00.0000000', 7) NOT BETWEEN Coalesce(d.Day, toDate('1970-01-01')) AND toDateTime64('2020-01-03 00:00:00.0000000', 7)
			THEN 'a'
		ELSE 'b'
	END
FROM
	BetweenDayRow r
		LEFT JOIN BetweenDayRow d ON d.Id = r.Id - 1
ORDER BY
	r.Id

-- ClickHouse.MySql ClickHouse
SELECT
	r.Id
FROM
	BetweenDayRow r
		LEFT JOIN BetweenDayRow d ON d.Id = r.Id - 1
WHERE
	toDateTime64('2020-01-02 12:00:00.0000000', 7) NOT BETWEEN d.Day AND toDateTime64('2020-01-03 00:00:00.0000000', 7)

