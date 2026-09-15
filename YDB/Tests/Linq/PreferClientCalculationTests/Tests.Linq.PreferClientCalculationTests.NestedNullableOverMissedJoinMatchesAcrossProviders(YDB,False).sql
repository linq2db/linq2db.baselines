-- YDB Ydb
SELECT
	e.Id as Id,
	Abs(j.Value1) as c1
FROM
	ClientCalcEntity e
		LEFT JOIN ClientCalcEntity j ON j.Id = e.Id + 1000

