-- Oracle.12.Managed Oracle.Managed Oracle12
SELECT
	r."Dto"
FROM
	"PreciseRow" r
FETCH NEXT 2 ROWS ONLY

-- Oracle.12.Managed Oracle.Managed Oracle12
SELECT
	From_Tz(CAST(CAST(r."Dto" AS timestamp(7)) + 1D * INTERVAL '1' DAY AS timestamp(7)), To_Char(r."Dto", 'TZH:TZM')) as "c1"
FROM
	"PreciseRow" r
FETCH NEXT 2 ROWS ONLY

