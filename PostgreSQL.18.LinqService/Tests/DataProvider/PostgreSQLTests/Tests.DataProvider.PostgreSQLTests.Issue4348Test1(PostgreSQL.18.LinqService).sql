BeforeExecute
-- PostgreSQL.18 PostgreSQL (asynchronously)

SELECT
	i."Id"
FROM
	"Issue4348Table" i
WHERE
	i."Value" IS NULL OR i."Value" @> '[1]'
LIMIT 1

