-- ClickHouse.Driver ClickHouse
SELECT
	e.Id,
	j.Day,
	e.Day
FROM
	MissedDayEntity e
		LEFT JOIN MissedDayEntity j ON j.Id = e.Id + 1000

-- ClickHouse.Driver ClickHouse
SELECT
	t1.Id,
	t1.Day
FROM
	MissedDayEntity t1

-- ClickHouse.Driver ClickHouse
SELECT
	toYear(Coalesce(j.Day, toDate32('1900-01-01')))
FROM
	MissedDayEntity e
		LEFT JOIN MissedDayEntity j ON j.Id = e.Id + 1000

