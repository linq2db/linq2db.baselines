-- Oracle.11.Managed Oracle11
DECLARE @CoarseMidnight Date
SET     @CoarseMidnight = TIMESTAMP '2026-06-01 00:00:00.000000'

SELECT
	COUNT(*)
FROM
	"ConvertedDayPairRow" r
WHERE
	Coalesce(r."ClosedOn", r."OpenedOn") IN (:CoarseMidnight)

