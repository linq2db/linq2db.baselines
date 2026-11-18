-- PostgreSQL.9.3 PostgreSQL
SELECT
	t."Id",
	t."Value"
FROM
	"NullableBoolClass" t
WHERE
	t."Value" IS NULL

-- PostgreSQL.9.3 PostgreSQL
SELECT
	t."Id",
	t."Value"
FROM
	"NullableBoolClass" t
WHERE
	1 = 0

-- PostgreSQL.9.3 PostgreSQL
SELECT
	t."Id",
	t."Value"
FROM
	"NullableBoolClass" t
WHERE
	t."Value" IS NOT NULL

-- PostgreSQL.9.3 PostgreSQL
SELECT
	t."Id",
	t."Value"
FROM
	"NullableBoolClass" t

