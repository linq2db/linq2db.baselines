-- Oracle.11.Managed Oracle11
SELECT
	CAST(t."FinishedOn" AS TIMESTAMP) - CAST(t."StartedOn" AS TIMESTAMP)
FROM
	"NullableDtOffsetSub" t
ORDER BY
	t."Id"

