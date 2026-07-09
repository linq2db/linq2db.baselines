-- PostgreSQL.13 PostgreSQL13

SELECT
	t."Id",
	t."Value"
FROM
	"NullableBoolClass" t
WHERE
	t."Value" IS NULL

-- PostgreSQL.13 PostgreSQL13

SELECT
	t."Id",
	t."Value"
FROM
	"NullableBoolClass" t
WHERE
	t."Value" IS NOT NULL

