-- Oracle.11.Managed Oracle11
SELECT
	COUNT(*)
FROM
	"ZonedRow" r
WHERE
	From_Tz(CAST(CAST(r."Dto" AS timestamp(7)) AS timestamp(7)), 'Europe/Prague') < r."Dto"

-- Oracle.11.Managed Oracle11
SELECT
	r."Id"
FROM
	"ZonedRow" r
ORDER BY
	From_Tz(CAST(CAST(r."Dto" AS timestamp(7)) AS timestamp(7)), 'Europe/Prague') DESC

-- Oracle.11.Managed Oracle11
SELECT
	r."Dto"
FROM
	"ZonedRow" r
WHERE
	r."Id" = 1 AND ROWNUM <= 2

-- Oracle.11.Managed Oracle11
UPDATE
	"ZonedRow" r
SET
	"Dto" = From_Tz(CAST(CAST(r."Dto" AS timestamp(7)) AS timestamp(7)), 'Europe/Prague')
WHERE
	r."Id" = 1

-- Oracle.11.Managed Oracle11
SELECT
	r."Dto"
FROM
	"ZonedRow" r
WHERE
	r."Id" = 1 AND ROWNUM <= 2

