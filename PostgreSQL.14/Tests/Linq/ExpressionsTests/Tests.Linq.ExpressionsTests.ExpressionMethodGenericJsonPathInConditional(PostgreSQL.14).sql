-- PostgreSQL.14 PostgreSQL.13 PostgreSQL12
SELECT
	r."Id",
	r."Json"
FROM
	"JsonColumnTable" r
WHERE
	r."Json"::json #>> '{json, text}' = 'test'

