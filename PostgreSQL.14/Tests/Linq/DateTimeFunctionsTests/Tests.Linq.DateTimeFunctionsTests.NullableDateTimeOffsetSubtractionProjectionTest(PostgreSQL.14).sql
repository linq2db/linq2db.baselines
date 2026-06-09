-- PostgreSQL.14 PostgreSQL.13 PostgreSQL

SELECT
	t."FinishedOn",
	t."StartedOn"
FROM
	"NullableDtOffsetSub" t
ORDER BY
	t."Id"

