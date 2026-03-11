-- DB2 DB2.LUW DB2LUW

SELECT
	"t1"."Id",
	"t1"."Value1"
FROM
	"Table1788" "t1"

-- DB2 DB2.LUW DB2LUW

SELECT
	"l"."Value1"
FROM
	"Table1788" "p"
		LEFT JOIN "Table1788" "l" ON "l"."Id" = "p"."Id" + 1

