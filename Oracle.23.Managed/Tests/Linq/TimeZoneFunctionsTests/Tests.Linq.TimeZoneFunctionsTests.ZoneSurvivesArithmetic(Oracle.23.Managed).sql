-- Oracle.23.Managed Oracle.Managed Oracle12
SELECT
	EXTRACT(HOUR FROM CAST(From_Tz(CAST(CAST((r."Dto" AT TIME ZONE 'Europe/Prague') AS timestamp(7)) + 1D * INTERVAL '1' HOUR AS timestamp(7)), To_Char((r."Dto" AT TIME ZONE 'Europe/Prague'), 'TZH:TZM')) AS timestamp(7))) as "c1"
FROM
	"ZonedRow" r
FETCH NEXT 2 ROWS ONLY

