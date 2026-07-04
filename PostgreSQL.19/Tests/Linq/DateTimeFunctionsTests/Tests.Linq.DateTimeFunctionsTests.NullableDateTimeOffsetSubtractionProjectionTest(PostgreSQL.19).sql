-- PostgreSQL.19 PostgreSQL13

SELECT
	t."FinishedOn",
	t."StartedOn"
FROM
	"NullableDtOffsetSub" t
ORDER BY
	t."Id"

