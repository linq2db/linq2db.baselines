BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	r."Id",
	r."Json"
FROM
	"Issue2431Table" r
WHERE
	r."Json"::json #>> '{json, text}' = 'test'

