-- YDB Ydb
SELECT
	e.Id as Id,
	j.Value1 + 1 as Joined
FROM
	ClientCalcEntity e
		LEFT JOIN ClientCalcEntity j ON j.Id = e.Id + 1000

