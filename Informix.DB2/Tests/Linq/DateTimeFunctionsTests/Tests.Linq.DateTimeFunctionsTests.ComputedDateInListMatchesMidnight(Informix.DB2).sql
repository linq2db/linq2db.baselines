-- Informix.DB2 Informix
SELECT
	COUNT(*)
FROM
	CoarseDayPairRow r
WHERE
	Nvl(r.ClosedOn, r.OpenedOn) IN (TO_DATE('2026-06-01', '%Y-%m-%d'))

-- Informix.DB2 Informix
SELECT
	COUNT(*)
FROM
	CoarseDayPairRow r
WHERE
	Nvl(r.ClosedOn, r.OpenedOn) IN (TO_DATE('2026-06-01', '%Y-%m-%d'))

-- Informix.DB2 Informix
SELECT
	COUNT(*)
FROM
	CoarseDayPairRow r
WHERE
	Extend(r."Value", Year to Day) IN (TO_DATE('2026-06-01', '%Y-%m-%d'))

-- Informix.DB2 Informix
SELECT
	COUNT(*)
FROM
	CoarseDayPairRow r
WHERE
	Nvl(r.ClosedOn, r.OpenedOn) IN (TO_DATE('2026-06-01 10:00:00', '%Y-%m-%d %H:%M:%S'))

