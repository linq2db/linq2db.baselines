-- PostgreSQL.17 PostgreSQL.15 PostgreSQL12
UPDATE
	"SetFlagTable"
SET
	"F" = CASE
		WHEN "SetFlagTable"."C" IS NULL THEN "SetFlagTable"."F"
		WHEN "SetFlagTable"."A" = "SetFlagTable"."B" OR "SetFlagTable"."A" IS NULL AND "SetFlagTable"."B" IS NULL
			THEN True
		ELSE False
	END

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL12
SELECT
	r."F"
FROM
	"SetFlagTable" r
ORDER BY
	r."Id"

