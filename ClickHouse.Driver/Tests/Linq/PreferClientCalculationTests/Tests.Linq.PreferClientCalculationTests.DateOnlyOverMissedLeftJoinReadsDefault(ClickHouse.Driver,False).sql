-- ClickHouse.Driver ClickHouse
SELECT
	e.Id,
	CASE
		WHEN Coalesce(j.Day, toDate32('1900-01-01')) > toDate32('2000-01-01')
			THEN 'y'
		ELSE 'n'
	END,
	CASE
		WHEN Coalesce(j.Day, toDate32('1900-01-01')) < toDate32('2000-01-01')
			THEN 'y'
		ELSE 'n'
	END,
	CASE
		WHEN Coalesce(j.Day, toDate32('1900-01-01')) > e.Day THEN 'y'
		ELSE 'n'
	END,
	CASE
		WHEN Coalesce(j.Day, toDate32('1900-01-01')) <= e.Day THEN 'y'
		ELSE 'n'
	END
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

