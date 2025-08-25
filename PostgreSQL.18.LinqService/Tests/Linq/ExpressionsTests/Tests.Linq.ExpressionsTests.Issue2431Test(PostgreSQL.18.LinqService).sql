BeforeExecute
-- PostgreSQL.18 PostgreSQL (asynchronously)

SELECT
	r."Id",
	r."Json"
FROM
	"Issue2431Table" r
WHERE
	r."Json"::json #>> '{json, text}' = 'test'

