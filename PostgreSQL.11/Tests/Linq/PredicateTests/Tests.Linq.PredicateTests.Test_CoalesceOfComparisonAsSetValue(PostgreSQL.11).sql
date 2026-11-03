-- PostgreSQL.11 PostgreSQL
UPDATE
	"NullableFlagTable"
SET
	"Flag" = CASE
		WHEN "NullableFlagTable"."A" = "NullableFlagTable"."B" OR "NullableFlagTable"."A" IS NULL AND "NullableFlagTable"."B" IS NULL
			THEN True
		ELSE False
	END

-- PostgreSQL.11 PostgreSQL
SELECT
	r."Id",
	r."Flag"
FROM
	"NullableFlagTable" r
ORDER BY
	r."Id"

