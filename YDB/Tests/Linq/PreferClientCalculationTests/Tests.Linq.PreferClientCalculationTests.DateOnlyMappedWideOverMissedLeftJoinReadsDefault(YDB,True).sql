-- YDB Ydb
SELECT
	e.Id as Id,
	j.Day64 as Day64,
	e.Day64 as Day64_1,
	j.DayTs64 as DayTs64,
	e.DayTs64 as DayTs64_1
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

