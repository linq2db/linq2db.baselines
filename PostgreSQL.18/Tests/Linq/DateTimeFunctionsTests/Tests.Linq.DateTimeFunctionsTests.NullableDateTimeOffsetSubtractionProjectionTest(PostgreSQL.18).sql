-- PostgreSQL.18 PostgreSQL

SELECT
	t."FinishedOn",
	t."StartedOn"
FROM
	"NullableDtOffsetSub" t
ORDER BY
	t."Id"

