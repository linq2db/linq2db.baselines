-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	t."Value"
FROM
	"NullableBoolClass" t
WHERE
	t."Value" IS NULL

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	t."Value"
FROM
	"NullableBoolClass" t
WHERE
	1 = 0

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	t."Value"
FROM
	"NullableBoolClass" t
WHERE
	t."Value" IS NOT NULL

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	t."Value"
FROM
	"NullableBoolClass" t

