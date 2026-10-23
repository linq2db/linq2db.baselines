-- Oracle.11.Managed Oracle11
SELECT
	COUNT(*)
FROM
	"CoarseDayPairRow" r
WHERE
	Coalesce(r."ClosedOn", r."OpenedOn") IN (r."OpenedOn")

