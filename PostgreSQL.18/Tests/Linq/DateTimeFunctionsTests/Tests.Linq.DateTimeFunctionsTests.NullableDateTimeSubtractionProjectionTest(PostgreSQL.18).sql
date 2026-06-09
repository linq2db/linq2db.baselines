-- PostgreSQL.18 PostgreSQL

SELECT
	t."FinishedOn",
	t."StartedOn"
FROM
	"NullableDateTimeSubtractionTable" t
ORDER BY
	t."Id"

