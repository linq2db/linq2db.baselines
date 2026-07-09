-- PostgreSQL.19 PostgreSQL13

SELECT
	t."Id",
	t."Value"
FROM
	"NullableBoolClass" t
WHERE
	t."Value" IS NULL

-- PostgreSQL.19 PostgreSQL13

SELECT
	t."Id",
	t."Value"
FROM
	"NullableBoolClass" t
WHERE
	1 = 0

-- PostgreSQL.19 PostgreSQL13

SELECT
	t."Id",
	t."Value"
FROM
	"NullableBoolClass" t
WHERE
	t."Value" IS NOT NULL

-- PostgreSQL.19 PostgreSQL13

SELECT
	t."Id",
	t."Value"
FROM
	"NullableBoolClass" t

