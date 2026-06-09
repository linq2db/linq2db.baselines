-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	t."FinishedOn",
	t."StartedOn"
FROM
	"NullableDateTimeSubtractionTable" t
ORDER BY
	t."Id"

