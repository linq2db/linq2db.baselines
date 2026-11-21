-- Informix.DB2 Informix
SELECT
	(e.Value1 / j.Value1)::Int,
	Mod(e.Value1, j.Value1),
	e.Dbl / j.Dbl,
	(e.Value1 / (j.Value1 * 2))::Int
FROM
	MissedDivisorEntity e
		LEFT JOIN MissedDivisorEntity j ON j.Id = e.Id + 1000

