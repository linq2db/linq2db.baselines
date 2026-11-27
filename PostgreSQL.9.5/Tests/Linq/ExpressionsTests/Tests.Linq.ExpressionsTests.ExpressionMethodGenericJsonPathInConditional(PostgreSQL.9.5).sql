-- PostgreSQL.9.5 PostgreSQL
SELECT
	r."Id",
	r."Json"
FROM
	"JsonColumnTable" r
WHERE
	r."Json"::json #>> '{json, text}' = 'test'

