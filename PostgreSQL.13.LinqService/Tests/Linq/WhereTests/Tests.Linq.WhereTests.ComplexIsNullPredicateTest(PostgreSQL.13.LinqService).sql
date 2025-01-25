BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	r."Id",
	r."Value"
FROM
	"ComplexPredicate" r
WHERE
	CASE
		WHEN r."Value" = '123' THEN True
		ELSE False
	END = CASE
		WHEN r."Value" = '1' OR r."Value" = 'test' AND (r."Value" <> '1' OR r."Value" IS NULL)
			THEN True
		ELSE False
	END
ORDER BY
	r."Id"

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	t1."Id",
	t1."Value"
FROM
	"ComplexPredicate" t1

