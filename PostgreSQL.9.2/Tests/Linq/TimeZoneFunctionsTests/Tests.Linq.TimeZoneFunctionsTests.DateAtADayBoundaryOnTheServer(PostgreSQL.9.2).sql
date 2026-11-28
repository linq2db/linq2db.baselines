-- PostgreSQL.9.2 PostgreSQL
SELECT
	r."Dto"
FROM
	"ZonedRow" r
LIMIT 2

-- PostgreSQL.9.2 PostgreSQL
SELECT
	Date_Trunc('day', (r."Dto" AT TIME ZONE 'UTC'))
FROM
	"ZonedRow" r
LIMIT 2

-- PostgreSQL.9.2 PostgreSQL
SELECT DISTINCT
	Date_Trunc('day', (g_1."Dto" AT TIME ZONE 'UTC'))
FROM
	"ZonedRow" g_1
LIMIT 2

