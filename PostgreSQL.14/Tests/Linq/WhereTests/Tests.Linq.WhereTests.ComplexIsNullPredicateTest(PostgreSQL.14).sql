-- PostgreSQL.14 PostgreSQL.13 PostgreSQL

SELECT
	r."Id",
	r."Value"
FROM
	"ComplexPredicate" r
WHERE
	(r."Value" = '123' AND r."Value" IS NOT NULL) = (r."Value" = '1' AND r."Value" IS NOT NULL OR r."Value" = 'test' AND r."Value" IS NOT NULL)
ORDER BY
	r."Id"

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL

SELECT
	t1."Id",
	t1."Value"
FROM
	"ComplexPredicate" t1

