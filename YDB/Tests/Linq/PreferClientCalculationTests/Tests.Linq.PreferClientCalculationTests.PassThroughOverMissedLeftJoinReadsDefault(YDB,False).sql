-- YDB Ydb
SELECT
	Coalesce(j.Value1, 0) + 1 as InSql,
	Coalesce(j.Value1, 0) + 1 as NotConverted
FROM
	MissedJoinEntity e
		LEFT JOIN MissedJoinEntity j ON j.Id = e.Id + 1000

