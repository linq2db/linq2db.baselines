-- DB2 DB2.LUW DB2LUW
UPDATE
	"SetFlagTable" "t1"
SET
	F = CASE
		WHEN "t1".C IS NULL THEN "t1".F
		WHEN "t1".A = "t1".B OR "t1".A IS NULL AND "t1".B IS NULL
			THEN 1
		ELSE 0
	END

-- DB2 DB2.LUW DB2LUW
SELECT
	"r".F
FROM
	"SetFlagTable" "r"
ORDER BY
	"r"."Id"

