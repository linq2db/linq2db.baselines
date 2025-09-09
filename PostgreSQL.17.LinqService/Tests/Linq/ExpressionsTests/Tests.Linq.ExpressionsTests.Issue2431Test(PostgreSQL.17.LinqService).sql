BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL (asynchronously)

SELECT
	r."Id",
	r."Json"
FROM
	"Issue2431Table" r
WHERE
	r."Json"::json #>> '{json, text}' = 'test'

