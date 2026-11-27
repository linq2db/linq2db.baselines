-- Oracle.11.Managed Oracle11
SELECT
	EXTRACT(HOUR FROM CAST(From_Tz(CAST(CAST((r."Dto" AT TIME ZONE 'Europe/Prague') AS timestamp(7)) + 1D * INTERVAL '1' HOUR AS timestamp(7)), To_Char((r."Dto" AT TIME ZONE 'Europe/Prague'), 'TZH:TZM')) AS timestamp(7)))
FROM
	"ZonedRow" r
WHERE
	ROWNUM <= 2

