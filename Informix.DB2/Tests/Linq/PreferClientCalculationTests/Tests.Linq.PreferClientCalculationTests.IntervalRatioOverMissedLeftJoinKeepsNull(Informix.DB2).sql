-- Informix.DB2 Informix
SELECT
	e.Date2,
	e."Date",
	j.Date2,
	j."Date"
FROM
	MissedDivisorEntity e
		LEFT JOIN MissedDivisorEntity j ON j.Id = e.Id + 1000

