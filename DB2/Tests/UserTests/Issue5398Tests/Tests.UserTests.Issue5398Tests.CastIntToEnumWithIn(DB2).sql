-- DB2 DB2.LUW DB2LUW

SELECT
	"i"."Id"
FROM
	"TestEnumTable" "i"
WHERE
	"i"."Value" IN (1, 3)
ORDER BY
	"i"."Id"

-- DB2 DB2.LUW DB2LUW

SELECT
	"t1"."Id",
	"t1"."Value"
FROM
	"TestEnumTable" "t1"

