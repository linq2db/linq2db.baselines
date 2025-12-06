-- PostgreSQL.14 PostgreSQL.13 PostgreSQL

SELECT
	t."Id",
	t."Value"
FROM
	"NullableBoolClass" t
WHERE
	t."Value" = True

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL

SELECT
	t."Id",
	t."Value"
FROM
	"NullableBoolClass" t
WHERE
	t."Value" = True

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL

SELECT
	t."Id",
	t."Value"
FROM
	"NullableBoolClass" t
WHERE
	t."Value" = False OR t."Value" IS NULL

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL

SELECT
	t."Id",
	t."Value"
FROM
	"NullableBoolClass" t
WHERE
	t."Value" = False

