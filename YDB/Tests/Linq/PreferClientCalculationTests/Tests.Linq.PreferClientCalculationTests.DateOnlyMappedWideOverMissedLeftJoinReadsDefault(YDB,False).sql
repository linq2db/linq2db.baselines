-- YDB Ydb
SELECT
	e.Id as Id,
	CASE
		WHEN Coalesce(j.Day64, Date('1970-01-01')) < e.Day64 THEN 'y'u
		ELSE 'n'u
	END as Earlier64,
	CASE
		WHEN Coalesce(j.DayTs64, Date('1970-01-01')) < e.DayTs64
			THEN 'y'u
		ELSE 'n'u
	END as EarlierTs64
FROM
	MissedWideDayEntity e
		LEFT JOIN MissedWideDayEntity j ON j.Id = e.Id + 1000

-- YDB Ydb
SELECT
	t1.Id as Id,
	t1.Day64 as Day64,
	t1.DayTs64 as DayTs64
FROM
	MissedWideDayEntity t1

