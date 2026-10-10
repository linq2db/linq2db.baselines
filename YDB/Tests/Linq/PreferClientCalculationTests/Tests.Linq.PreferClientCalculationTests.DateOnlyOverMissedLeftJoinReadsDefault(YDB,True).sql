-- YDB Ydb
SELECT
	e.Id as Id,
	j.`Day` as Day_1,
	e.`Day` as Day_2
FROM
	MissedDayEntity e
		LEFT JOIN MissedDayEntity j ON j.Id = e.Id + 1000

-- YDB Ydb
SELECT
	t1.Id as Id,
	t1.`Day` as Day_1
FROM
	MissedDayEntity t1

-- YDB Ydb
SELECT
	DateTime::GetYear(Coalesce(j.`Day`, Date('1970-01-01'))) as Year_1
FROM
	MissedDayEntity e
		LEFT JOIN MissedDayEntity j ON j.Id = e.Id + 1000

