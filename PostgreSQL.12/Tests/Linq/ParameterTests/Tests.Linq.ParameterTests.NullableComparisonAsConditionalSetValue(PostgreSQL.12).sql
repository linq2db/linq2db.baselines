-- PostgreSQL.12 PostgreSQL12
UPDATE
	"TestBool"
SET
	"Value" = CASE
		WHEN "TestBool"."Id" > 0 THEN "TestBool"."Value" = False OR "TestBool"."Value" IS NULL
		ELSE NULL
	END

-- PostgreSQL.12 PostgreSQL12
SELECT
	r."Value"
FROM
	"TestBool" r
ORDER BY
	r."Id"

