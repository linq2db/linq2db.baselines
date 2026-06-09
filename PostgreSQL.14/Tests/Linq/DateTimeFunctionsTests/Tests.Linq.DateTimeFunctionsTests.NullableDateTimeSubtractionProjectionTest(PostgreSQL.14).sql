-- PostgreSQL.14 PostgreSQL.13 PostgreSQL

SELECT
	t."FinishedOn",
	t."StartedOn"
FROM
	"NullableDateTimeSubtractionTable" t
ORDER BY
	t."Id"

