-- PostgreSQL.9.2 PostgreSQL
SELECT
	t."FinishedOn",
	t."StartedOn"
FROM
	"NullableDateTimeSub" t
ORDER BY
	t."Id"

