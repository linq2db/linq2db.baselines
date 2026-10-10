-- YDB Ydb
SELECT
	e.Id as Id,
	j.Value1 as Value1,
	Abs(Coalesce(j.Value1, 0) - 1) as c1,
	j.`Date` as Date_1,
	e.`Date` as Date_2
FROM
	MissedJoinEntity e
		LEFT JOIN MissedJoinEntity j ON j.Id = e.Id + 1000

-- YDB Ydb
SELECT
	t1.Id as Id,
	t1.Value1 as Value1,
	t1.`Date` as Date_1,
	t1.Flag as Flag,
	t1.Name as Name
FROM
	MissedJoinEntity t1

-- YDB Ydb
SELECT
	DateTime::GetYear(Coalesce(j.`Date`, Timestamp('1970-01-01T00:00:00.000000Z'))) as Year_1
FROM
	MissedJoinEntity e
		LEFT JOIN MissedJoinEntity j ON j.Id = e.Id + 1000

