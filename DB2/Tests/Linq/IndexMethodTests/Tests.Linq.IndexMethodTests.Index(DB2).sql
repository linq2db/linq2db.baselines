-- DB2 DB2.LUW DB2LUW

SELECT
	ROW_NUMBER() OVER (ORDER BY "item_1"."Id") - 1,
	"item_1"."Id",
	"item_1"."TestId"
FROM
	"TestTable" "item_1"
ORDER BY
	"item_1"."Id"

-- DB2 DB2.LUW DB2LUW

SELECT
	"t1"."Id",
	"t1"."TestId"
FROM
	"TestTable" "t1"

