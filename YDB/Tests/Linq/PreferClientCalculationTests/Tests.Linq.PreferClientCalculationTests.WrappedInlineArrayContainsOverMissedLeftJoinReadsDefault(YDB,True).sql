-- YDB Ydb
SELECT
	e.Id as Id,
	j.Value1 as Value1
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
	e.Id as Id,
	j.Value1 as Value1
FROM
	MissedJoinEntity e
		LEFT JOIN MissedJoinEntity j ON j.Id = e.Id + 1000

