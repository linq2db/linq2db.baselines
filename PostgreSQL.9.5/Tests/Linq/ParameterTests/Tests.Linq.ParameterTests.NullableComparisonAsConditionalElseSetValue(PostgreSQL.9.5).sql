-- PostgreSQL.9.5 PostgreSQL
UPDATE
	"SetFlagTable"
SET
	"F" = CASE
		WHEN "SetFlagTable"."C" IS NULL THEN "SetFlagTable"."F"
		WHEN "SetFlagTable"."A" = "SetFlagTable"."B" OR "SetFlagTable"."A" IS NULL AND "SetFlagTable"."B" IS NULL
			THEN True
		ELSE False
	END

-- PostgreSQL.9.5 PostgreSQL
SELECT
	r."F"
FROM
	"SetFlagTable" r
ORDER BY
	r."Id"

