-- YDB Ydb
SELECT
	j.Value1 + 1 as c1
FROM
	MissedJoinEntity e
		LEFT JOIN MissedJoinEntity j ON j.Id = e.Id + 1000

