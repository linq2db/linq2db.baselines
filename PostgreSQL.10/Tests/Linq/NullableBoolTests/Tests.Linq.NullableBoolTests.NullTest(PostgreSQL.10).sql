-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
SELECT
	t."Id",
	t."Value"
FROM
	"NullableBoolClass" t
WHERE
	t."Value" IS NULL

-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
SELECT
	t."Id",
	t."Value"
FROM
	"NullableBoolClass" t
WHERE
	t."Value" IS NOT NULL

