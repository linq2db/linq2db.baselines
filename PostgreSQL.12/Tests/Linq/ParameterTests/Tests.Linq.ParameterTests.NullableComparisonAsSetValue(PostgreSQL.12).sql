-- PostgreSQL.12 PostgreSQL12
UPDATE
	"TestBool"
SET
	"Value" = "TestBool"."Value" = False OR "TestBool"."Value" IS NULL

-- PostgreSQL.12 PostgreSQL12
SELECT
	r."Value"
FROM
	"TestBool" r
ORDER BY
	r."Id"

