-- YDB Ydb
SELECT
	e.Value1 / j.Value1 as IntDiv,
	e.Value1 % j.Value1 as IntMod,
	e.Dbl / j.Dbl as DblDiv,
	e.Value1 / (j.Value1 * 2) as Nested
FROM
	MissedDivisorEntity e
		LEFT JOIN MissedDivisorEntity j ON j.Id = e.Id + 1000

