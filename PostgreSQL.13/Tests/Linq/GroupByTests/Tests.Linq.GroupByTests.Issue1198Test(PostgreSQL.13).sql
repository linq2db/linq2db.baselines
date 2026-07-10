-- PostgreSQL.13 PostgreSQL12

SELECT
	COUNT(*) FILTER (WHERE t."Status" = 3)
FROM
	"Issue1192Table" t
WHERE
	t."MyOtherId" = 12
LIMIT 1

