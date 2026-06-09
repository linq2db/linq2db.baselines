-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	t."FinishedOn",
	t."StartedOn"
FROM
	"NullableDateTimeSubtractionTable" t
ORDER BY
	t."Id"

