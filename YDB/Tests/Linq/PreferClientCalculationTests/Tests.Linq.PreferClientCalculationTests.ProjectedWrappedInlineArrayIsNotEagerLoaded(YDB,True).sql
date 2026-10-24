-- YDB Ydb
SELECT
	e.Id as Id,
	e.Value1 as Value1,
	j.Value1 as Enumerable_1
FROM
	MissedJoinEntity e
		LEFT JOIN MissedJoinEntity j ON j.Id = e.Id + 1000
ORDER BY
	e.Id

