-- PostgreSQL.11 PostgreSQL
SELECT
	t."Id",
	t."Value"
FROM
	"NullableBoolClass" t
WHERE
	t."Value" IS NULL

-- PostgreSQL.11 PostgreSQL
SELECT
	t."Id",
	t."Value"
FROM
	"NullableBoolClass" t
WHERE
	1 = 0

-- PostgreSQL.11 PostgreSQL
SELECT
	t."Id",
	t."Value"
FROM
	"NullableBoolClass" t
WHERE
	t."Value" IS NOT NULL

-- PostgreSQL.11 PostgreSQL
SELECT
	t."Id",
	t."Value"
FROM
	"NullableBoolClass" t

