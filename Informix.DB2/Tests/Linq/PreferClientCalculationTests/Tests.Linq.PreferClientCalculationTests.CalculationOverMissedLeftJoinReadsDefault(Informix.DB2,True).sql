-- Informix.DB2 Informix
SELECT
	e.Id,
	j.Value1,
	Abs(Nvl(j.Value1, 0) - 1),
	j."Date",
	Year(j."Date"),
	Mdy(1, 1, 2000)
FROM
	MissedJoinEntity e
		LEFT JOIN MissedJoinEntity j ON j.Id = e.Id + 1000

-- Informix.DB2 Informix
SELECT
	t1.Id,
	t1.Value1,
	t1."Date"
FROM
	MissedJoinEntity t1

