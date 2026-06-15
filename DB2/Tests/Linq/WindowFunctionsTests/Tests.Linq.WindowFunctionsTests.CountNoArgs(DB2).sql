-- DB2 DB2.LUW DB2LUW

SELECT
	COUNT(*) OVER (PARTITION BY "t"."CategoryId" ORDER BY "t"."Id"),
	COUNT(*) OVER (ORDER BY "t"."Id")
FROM
	"WindowFunctionTestEntity" "t"

