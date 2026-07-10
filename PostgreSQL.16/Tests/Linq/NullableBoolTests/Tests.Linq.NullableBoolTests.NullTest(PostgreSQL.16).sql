-- PostgreSQL.16 PostgreSQL.15 PostgreSQL12
SELECT
	t."Id",
	t."Value"
FROM
	"NullableBoolClass" t
WHERE
	t."Value" IS NULL

-- PostgreSQL.16 PostgreSQL.15 PostgreSQL12
SELECT
	t."Id",
	t."Value"
FROM
	"NullableBoolClass" t
WHERE
	t."Value" IS NOT NULL

