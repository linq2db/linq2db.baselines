-- Oracle.18.Managed Oracle.Managed Oracle12
SELECT
	COUNT(*)
FROM
	"CoarseDayPairRow" r
WHERE
	Coalesce(r."ClosedOn", r."OpenedOn") IN (TIMESTAMP '2026-06-01 00:00:00.000000')

-- Oracle.18.Managed Oracle.Managed Oracle12
SELECT
	COUNT(*)
FROM
	"CoarseDayPairRow" r
WHERE
	Coalesce(r."ClosedOn", r."OpenedOn") IN (TIMESTAMP '2026-06-01 00:00:00.000000')

-- Oracle.18.Managed Oracle.Managed Oracle12
SELECT
	COUNT(*)
FROM
	"CoarseDayPairRow" r
WHERE
	Trunc(r."Value", 'DD') IN (TIMESTAMP '2026-06-01 00:00:00.000000')

-- Oracle.18.Managed Oracle.Managed Oracle12
SELECT
	COUNT(*)
FROM
	"CoarseDayPairRow" r
WHERE
	Coalesce(r."ClosedOn", r."OpenedOn") IN (TIMESTAMP '2026-06-01 10:00:00.000000')

