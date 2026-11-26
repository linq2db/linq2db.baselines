-- PostgreSQL.19 PostgreSQL12
DECLARE @zone Text(13) -- String
SET     @zone = 'Europe/Prague'

SELECT
	COUNT(*)
FROM
	"ZonedRow" r
WHERE
	((r."Dto" AT TIME ZONE 'UTC') AT TIME ZONE :zone) < r."Dto"

-- PostgreSQL.19 PostgreSQL12
DECLARE @zone Text(13) -- String
SET     @zone = 'Europe/Prague'

SELECT
	r."Id"
FROM
	"ZonedRow" r
ORDER BY
	((r."Dto" AT TIME ZONE 'UTC') AT TIME ZONE :zone) DESC

-- PostgreSQL.19 PostgreSQL12
SELECT
	r."Dto"
FROM
	"ZonedRow" r
WHERE
	r."Id" = 1
LIMIT 2

-- PostgreSQL.19 PostgreSQL12
DECLARE @zone Text(13) -- String
SET     @zone = 'Europe/Prague'

UPDATE
	"ZonedRow"
SET
	"Dto" = (("ZonedRow"."Dto" AT TIME ZONE 'UTC') AT TIME ZONE :zone)
WHERE
	"ZonedRow"."Id" = 1

-- PostgreSQL.19 PostgreSQL12
SELECT
	r."Dto"
FROM
	"ZonedRow" r
WHERE
	r."Id" = 1
LIMIT 2

