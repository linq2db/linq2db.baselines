-- YDB Ydb
SELECT
	e.Id as Id,
	CASE
		WHEN j.Id IS NULL THEN -1
		ELSE Coalesce(j.Value1, 0) + 1
	END as Guarded,
	j.Value1 as Value1,
	Coalesce(j.Value1, 0) + 1 as Plus
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
	j.Id as Id,
	j.Value1 as Value1,
	j.`Date` as Date_1,
	j.Flag as Flag,
	j.Name as Name
FROM
	MissedJoinEntity e
		LEFT JOIN MissedJoinEntity j ON j.Id = e.Id + 1000

