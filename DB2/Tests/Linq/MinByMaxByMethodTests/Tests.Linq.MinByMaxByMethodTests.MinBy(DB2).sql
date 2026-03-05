-- DB2 DB2.LUW DB2LUW

SELECT
	"t1"."Id",
	"t1"."TestId"
FROM
	"TestTable" "t1"
ORDER BY
	"t1"."Id"
FETCH NEXT 1 ROWS ONLY

