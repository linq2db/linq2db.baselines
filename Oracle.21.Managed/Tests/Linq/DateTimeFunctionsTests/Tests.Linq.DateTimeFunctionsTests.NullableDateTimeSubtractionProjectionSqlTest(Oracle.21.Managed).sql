-- Oracle.21.Managed Oracle.Managed Oracle12
SELECT
	CAST(t."FinishedOn" AS TIMESTAMP) - CAST(t."StartedOn" AS TIMESTAMP)
FROM
	"NullableDateTimeSub" t
ORDER BY
	t."Id"

