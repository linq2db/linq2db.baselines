-- Informix.DB2 Informix
SELECT
	Nvl(j.Value1, 0) + 1,
	Nvl(j.Value1, 0) + 1
FROM
	MissedJoinEntity e
		LEFT JOIN MissedJoinEntity j ON j.Id = e.Id + 1000

