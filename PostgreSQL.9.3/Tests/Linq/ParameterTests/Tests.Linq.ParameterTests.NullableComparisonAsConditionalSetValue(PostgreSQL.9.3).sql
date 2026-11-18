-- PostgreSQL.9.3 PostgreSQL
UPDATE
	"TestBool"
SET
	"Value" = CASE
		WHEN "TestBool"."Id" > 0 THEN CASE
			WHEN "TestBool"."Value" = False OR "TestBool"."Value" IS NULL
				THEN True
			ELSE False
		END
		ELSE NULL
	END

-- PostgreSQL.9.3 PostgreSQL
SELECT
	r."Value"
FROM
	"TestBool" r
ORDER BY
	r."Id"

