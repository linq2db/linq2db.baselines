-- PostgreSQL.16 PostgreSQL.15 PostgreSQL12
SELECT
	r."Dto"
FROM
	"DatedRow" r
LIMIT 2

-- PostgreSQL.16 PostgreSQL.15 PostgreSQL12
SELECT
	r."Dto"::Time
FROM
	"DatedRow" r
LIMIT 2

-- PostgreSQL.16 PostgreSQL.15 PostgreSQL12
SELECT
	r."Dt"::Time
FROM
	"DateRow" r
LIMIT 2

