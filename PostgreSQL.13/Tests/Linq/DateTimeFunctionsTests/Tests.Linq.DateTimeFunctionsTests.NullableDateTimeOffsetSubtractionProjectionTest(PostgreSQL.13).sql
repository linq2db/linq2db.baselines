-- PostgreSQL.13 PostgreSQL12

SELECT
	t."FinishedOn",
	t."StartedOn"
FROM
	"NullableDtOffsetSub" t
ORDER BY
	t."Id"

