-- PostgreSQL.18 PostgreSQL12
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

-- PostgreSQL.18 PostgreSQL12
SELECT
	r."Value"
FROM
	"TestBool" r
ORDER BY
	r."Id"

