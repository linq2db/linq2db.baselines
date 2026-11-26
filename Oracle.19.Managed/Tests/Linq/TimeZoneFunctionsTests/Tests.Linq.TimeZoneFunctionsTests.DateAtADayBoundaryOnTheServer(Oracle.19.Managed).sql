-- Oracle.19.Managed Oracle.Managed Oracle12
SELECT
	r."Dto"
FROM
	"ZonedRow" r
FETCH NEXT 2 ROWS ONLY

-- Oracle.19.Managed Oracle.Managed Oracle12
SELECT
	TRUNC(CAST(r."Dto" AS timestamp(7))) as "c1"
FROM
	"ZonedRow" r
FETCH NEXT 2 ROWS ONLY

-- Oracle.19.Managed Oracle.Managed Oracle12
SELECT DISTINCT
	TRUNC(CAST(g_1."Dto" AS timestamp(7))) as "Key_1"
FROM
	"ZonedRow" g_1
FETCH NEXT 2 ROWS ONLY

