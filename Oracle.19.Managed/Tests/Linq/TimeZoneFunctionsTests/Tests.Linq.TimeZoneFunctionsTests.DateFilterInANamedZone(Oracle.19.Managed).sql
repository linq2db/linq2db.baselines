-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @date_1 TimeStamp -- DateTime
SET     @date_1 = TIMESTAMP '2020-06-15 00:00:00.000000'

SELECT
	COUNT(*)
FROM
	"ZonedRow" r
WHERE
	TRUNC(CAST((r."Dto" AT TIME ZONE 'Europe/Prague') AS timestamp(7))) = :date_1

-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @later TimeStamp -- DateTime
SET     @later = TIMESTAMP '2020-06-15 01:00:00.000000'

SELECT
	COUNT(*)
FROM
	"ZonedRow" r
WHERE
	TRUNC(CAST((r."Dto" AT TIME ZONE 'Europe/Prague') AS timestamp(7))) = :later

-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @p TimeStamp -- DateTime
SET     @p = TIMESTAMP '2020-06-16 00:00:00.000000'

SELECT
	COUNT(*)
FROM
	"ZonedRow" r
WHERE
	TRUNC(CAST(From_Tz(CAST(CAST((r."Dto" AT TIME ZONE 'Europe/Prague') AS timestamp(7)) + 1D * INTERVAL '1' DAY AS timestamp(7)), To_Char((r."Dto" AT TIME ZONE 'Europe/Prague'), 'TZH:TZM')) AS timestamp(7))) = :p

-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @p TimeStamp -- DateTime
SET     @p = TIMESTAMP '2020-06-16 01:00:00.000000'

SELECT
	COUNT(*)
FROM
	"ZonedRow" r
WHERE
	TRUNC(CAST(From_Tz(CAST(CAST((r."Dto" AT TIME ZONE 'Europe/Prague') AS timestamp(7)) + 1D * INTERVAL '1' DAY AS timestamp(7)), To_Char((r."Dto" AT TIME ZONE 'Europe/Prague'), 'TZH:TZM')) AS timestamp(7))) = :p

