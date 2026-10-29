-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
UPDATE
	"TestBool"
SET
	"Value" = "TestBool"."Value" = False OR "TestBool"."Value" IS NULL

-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
SELECT
	r."Value"
FROM
	"TestBool" r
ORDER BY
	r."Id"

