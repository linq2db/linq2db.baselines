-- ClickHouse.MySql ClickHouse
SELECT
	r.Day BETWEEN toDate('2020-01-01') AND toDate('2020-01-03'),
	r.Day >= toDate('2020-01-01') AND r.Day <= toDate('2020-01-03'),
	Coalesce(r.Other, r.Day) BETWEEN toDateTime64('2020-01-01 00:30:00.0000000', 7) AND toDateTime64('2020-01-03 00:30:00.0000000', 7),
	Coalesce(r.Other, r.Day) >= toDateTime64('2020-01-01 00:30:00.0000000', 7) AND Coalesce(r.Other, r.Day) <= toDateTime64('2020-01-03 00:30:00.0000000', 7),
	r.Day BETWEEN toDate('2020-01-01') AND toDate('2020-01-03'),
	r.Day >= toDate('2020-01-01') AND r.Day <= toDate('2020-01-03'),
	Coalesce(d.Day, toDate('1970-01-01')) BETWEEN toDate('2020-01-01') AND toDate('2020-01-03'),
	Coalesce(d.Day, toDate('1970-01-01')) >= toDate('2020-01-01') AND Coalesce(d.Day, toDate('1970-01-01')) <= toDate('2020-01-03'),
	r.Day NOT BETWEEN toDate('2020-01-01') AND toDate('2020-01-03'),
	r.Day < toDate('2020-01-01') OR r.Day > toDate('2020-01-03'),
	r.Day NOT BETWEEN toDate('2020-01-01') AND toDate('2020-01-03'),
	r.Day < toDate('2020-01-01') OR r.Day > toDate('2020-01-03'),
	Coalesce(d.Day, toDate('1970-01-01')) NOT BETWEEN toDate('2020-01-01') AND toDate('2020-01-03'),
	Coalesce(d.Day, toDate('1970-01-01')) < toDate('2020-01-01') OR Coalesce(d.Day, toDate('1970-01-01')) > toDate('2020-01-03'),
	r.Stamp BETWEEN toDateTime64('2020-01-01 00:30:00.0000000', 7) AND toDateTime64('2020-01-03 00:30:00.0000000', 7),
	r.Stamp >= toDateTime64('2020-01-01 00:30:00.0000000', 7) AND r.Stamp <= toDateTime64('2020-01-03 00:30:00.0000000', 7)
FROM
	BetweenDayRow r
		LEFT JOIN BetweenDayRow d ON d.Id = r.Id - 1

-- ClickHouse.MySql ClickHouse
SELECT
	r.Id
FROM
	BetweenDayRow r
WHERE
	r.Day BETWEEN toDate('2020-01-01') AND toDate('2020-01-03')
ORDER BY
	r.Id

-- ClickHouse.MySql ClickHouse
SELECT
	r.Id
FROM
	BetweenDayRow r
WHERE
	r.Day >= toDate('2020-01-01') AND r.Day <= toDate('2020-01-03')
ORDER BY
	r.Id

-- ClickHouse.MySql ClickHouse
SELECT
	r.Id
FROM
	BetweenDayRow r
WHERE
	r.Day NOT BETWEEN toDate('2020-01-01') AND toDate('2020-01-03')
ORDER BY
	r.Id

-- ClickHouse.MySql ClickHouse
SELECT
	r.Id
FROM
	BetweenDayRow r
WHERE
	r.Day < toDate('2020-01-01') OR r.Day > toDate('2020-01-03')
ORDER BY
	r.Id

