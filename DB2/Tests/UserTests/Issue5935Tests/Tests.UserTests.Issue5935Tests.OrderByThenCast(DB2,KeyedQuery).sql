-- DB2 DB2.LUW DB2LUW
SELECT
	"i"."Value",
	"i"."Id"
FROM
	"Item" "i"
ORDER BY
	"i"."Id"

-- DB2 DB2.LUW DB2LUW
SELECT
	"k_1"."item",
	"d"."Id",
	"d"."ItemId",
	"d"."Log"
FROM
	(VALUES
		(1), (2)
	) "k_1"("item")
		INNER JOIN "ItemLog" "d" ON "k_1"."item" = "d"."ItemId"
ORDER BY
	"d"."Id"

