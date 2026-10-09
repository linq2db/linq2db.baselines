-- Informix.DB2 Informix
SELECT
	e.Id,
	j.Value1,
	Abs(Nvl(j.Value1, 0) - 1),
	j."Date",
	e."Date"
FROM
	MissedJoinEntity e
		LEFT JOIN MissedJoinEntity j ON j.Id = e.Id + 1000

-- Informix.DB2 Informix
SELECT
	t1.Id,
	t1.Value1,
	t1."Date",
	t1.Flag,
	t1.Name
FROM
	MissedJoinEntity t1

-- Informix.DB2 Informix
SELECT
	Year(Nvl(j."Date", TO_DATE('0001-01-01', '%Y-%m-%d')))
FROM
	MissedJoinEntity e
		LEFT JOIN MissedJoinEntity j ON j.Id = e.Id + 1000

