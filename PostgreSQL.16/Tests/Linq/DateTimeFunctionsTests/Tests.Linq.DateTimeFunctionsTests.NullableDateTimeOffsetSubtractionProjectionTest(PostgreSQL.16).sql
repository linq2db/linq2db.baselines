-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	t."FinishedOn",
	t."StartedOn"
FROM
	"NullableDtOffsetSub" t
ORDER BY
	t."Id"

