-- Oracle.12.Managed Oracle.Managed Oracle12
SELECT
	CAST(((SYSTIMESTAMP AT TIME ZONE 'UTC') AT TIME ZONE 'UTC') AS timestamp(7)) as "c1"
FROM
	"ZonedRow" r
FETCH NEXT 2 ROWS ONLY

-- Oracle.12.Managed Oracle.Managed Oracle12
SELECT
	CAST(((SYSTIMESTAMP AT TIME ZONE 'UTC') AT TIME ZONE 'UTC') AS timestamp(7)) as "Now"
FROM
	"ZonedRow" r
FETCH NEXT 2 ROWS ONLY

-- Oracle.12.Managed Oracle.Managed Oracle12
SELECT
	((SYSTIMESTAMP AT TIME ZONE 'UTC') AT TIME ZONE '+02:00') as "c1"
FROM
	"ZonedRow" r
FETCH NEXT 2 ROWS ONLY

