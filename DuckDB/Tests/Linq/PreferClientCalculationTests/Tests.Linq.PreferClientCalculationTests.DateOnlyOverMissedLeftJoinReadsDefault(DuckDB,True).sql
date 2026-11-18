-- DuckDB
SELECT
	e.Id,
	j."Day",
	e."Day"
FROM
	MissedDayEntity e
		LEFT JOIN MissedDayEntity j ON j.Id = e.Id + 1000

-- DuckDB
SELECT
	t1.Id,
	t1."Day"
FROM
	MissedDayEntity t1

-- DuckDB
SELECT
	EXTRACT(year FROM Coalesce(j."Day", '0001-01-01'::DATE))
FROM
	MissedDayEntity e
		LEFT JOIN MissedDayEntity j ON j.Id = e.Id + 1000

