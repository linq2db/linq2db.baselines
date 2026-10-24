-- Informix.DB2 Informix
DECLARE @CoarseMidnight Date(16)
SET     @CoarseMidnight = TO_DATE('2026-06-01', '%Y-%m-%d')

SELECT
	COUNT(*)
FROM
	ConvertedDayPairRow r
WHERE
	Nvl(r.ClosedOn, r.OpenedOn) IN (@CoarseMidnight)

