-- Informix.DB2 Informix
SELECT
	e.Id,
	j."Day",
	e."Day"
FROM
	MissedDayEntity e
		LEFT JOIN MissedDayEntity j ON j.Id = e.Id + 1000

-- Informix.DB2 Informix
SELECT
	t1.Id,
	t1."Day"
FROM
	MissedDayEntity t1

-- Informix.DB2 Informix
SELECT
	Year(Nvl(j."Day", TO_DATE('0001-01-01', '%Y-%m-%d')))
FROM
	MissedDayEntity e
		LEFT JOIN MissedDayEntity j ON j.Id = e.Id + 1000

