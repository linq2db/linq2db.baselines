-- Oracle.11.Managed Oracle11
SELECT
	r."Dto"
FROM
	"ZonedRow" r
WHERE
	ROWNUM <= 2

-- Oracle.11.Managed Oracle11
DECLARE @date_1 TimeStamp -- DateTime
SET     @date_1 = TIMESTAMP '2021-01-01 00:00:00.000000'

SELECT
	COUNT(*)
FROM
	"ZonedRow" r
WHERE
	TRUNC(CAST(r."Dto" AS timestamp(7))) = :date_1

-- Oracle.11.Managed Oracle11
DECLARE @later TimeStamp -- DateTime
SET     @later = TIMESTAMP '2021-01-01 01:00:00.000000'

SELECT
	COUNT(*)
FROM
	"ZonedRow" r
WHERE
	TRUNC(CAST(r."Dto" AS timestamp(7))) = :later

