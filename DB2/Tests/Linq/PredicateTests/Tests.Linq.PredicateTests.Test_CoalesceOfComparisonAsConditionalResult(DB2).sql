-- DB2 DB2.LUW DB2LUW
SELECT
	"r"."Id",
	CASE
		WHEN "r".C IS NULL THEN CASE
			WHEN "r".A = "r".B OR "r".A IS NULL AND "r".B IS NULL THEN 1
			ELSE 0
		END
		ELSE "r"."Flag"
	END
FROM
	"NullableFlagTable" "r"

-- DB2 DB2.LUW DB2LUW
SELECT
	"t1"."Id",
	"t1".A,
	"t1".B,
	"t1".C,
	"t1"."Flag"
FROM
	"NullableFlagTable" "t1"

