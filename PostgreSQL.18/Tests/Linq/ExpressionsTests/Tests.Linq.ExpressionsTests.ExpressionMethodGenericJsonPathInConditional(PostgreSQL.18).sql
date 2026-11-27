-- PostgreSQL.18 PostgreSQL12
SELECT
	r."Id",
	r."Json"
FROM
	"JsonColumnTable" r
WHERE
	r."Json"::json #>> '{json, text}' = 'test'

