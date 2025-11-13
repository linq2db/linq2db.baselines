-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	COUNT(*) FILTER (WHERE t."Status" = 3)
FROM
	"Issue1192Table" t
WHERE
	t."MyOtherId" = 12
LIMIT 1

