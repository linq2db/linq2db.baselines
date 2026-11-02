-- DB2 DB2.LUW DB2LUW
UPDATE
	"TestBool" "t1"
SET
	"Value" = CASE
		WHEN "t1"."Id" > 0 THEN "t1"."Value" = 0 OR "t1"."Value" IS NULL
		ELSE NULL
	END

-- DB2 DB2.LUW DB2LUW
SELECT
	"r"."Value"
FROM
	"TestBool" "r"
ORDER BY
	"r"."Id"

