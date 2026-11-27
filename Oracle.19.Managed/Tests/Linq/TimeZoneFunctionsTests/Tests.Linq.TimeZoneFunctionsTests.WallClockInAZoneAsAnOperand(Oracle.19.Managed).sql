-- Oracle.19.Managed Oracle.Managed Oracle12
SELECT
	COUNT(*)
FROM
	"ZonedRow" r
WHERE
	From_Tz(CAST(CAST(r."Dto" AS timestamp(7)) AS timestamp(7)), 'Europe/Prague') < r."Dto"

-- Oracle.19.Managed Oracle.Managed Oracle12
SELECT
	r."Id"
FROM
	"ZonedRow" r
ORDER BY
	From_Tz(CAST(CAST(r."Dto" AS timestamp(7)) AS timestamp(7)), 'Europe/Prague') DESC

-- Oracle.19.Managed Oracle.Managed Oracle12
SELECT
	r."Dto"
FROM
	"ZonedRow" r
WHERE
	r."Id" = 1
FETCH NEXT 2 ROWS ONLY

-- Oracle.19.Managed Oracle.Managed Oracle12
UPDATE
	"ZonedRow" r
SET
	"Dto" = From_Tz(CAST(CAST(r."Dto" AS timestamp(7)) AS timestamp(7)), 'Europe/Prague')
WHERE
	r."Id" = 1

-- Oracle.19.Managed Oracle.Managed Oracle12
SELECT
	r."Dto"
FROM
	"ZonedRow" r
WHERE
	r."Id" = 1
FETCH NEXT 2 ROWS ONLY

