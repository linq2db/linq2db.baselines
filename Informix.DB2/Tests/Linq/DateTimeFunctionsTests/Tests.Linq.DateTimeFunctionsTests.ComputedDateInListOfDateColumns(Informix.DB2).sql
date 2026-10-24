-- Informix.DB2 Informix
SELECT
	COUNT(*)
FROM
	CoarseDayPairRow r
WHERE
	Nvl(r.ClosedOn, r.OpenedOn) IN (r.OpenedOn)

