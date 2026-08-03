-- Oracle.18.Managed Oracle.Managed Oracle12
SELECT
	CAST(t."FinishedOn" AS TIMESTAMP) - CAST(t."StartedOn" AS TIMESTAMP)
FROM
	"NullableDtOffsetSub" t
ORDER BY
	t."Id"

