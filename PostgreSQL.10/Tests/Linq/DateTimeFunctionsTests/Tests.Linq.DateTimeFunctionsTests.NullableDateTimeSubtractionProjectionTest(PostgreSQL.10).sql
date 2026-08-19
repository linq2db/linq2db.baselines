-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
SELECT
	t."FinishedOn",
	t."StartedOn"
FROM
	"NullableDateTimeSub" t
ORDER BY
	t."Id"

