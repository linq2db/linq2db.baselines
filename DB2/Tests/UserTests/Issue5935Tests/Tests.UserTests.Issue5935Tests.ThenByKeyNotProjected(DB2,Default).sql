-- DB2 DB2.LUW DB2LUW
SELECT
	"m_1"."Id",
	"d"."Log"
FROM
	"Item" "m_1"
		INNER JOIN "ItemLog" "d" ON "m_1"."Id" = "d"."ItemId"
ORDER BY
	"d"."ItemId",
	"d"."Id" DESC,
	"m_1"."Id"

-- DB2 DB2.LUW DB2LUW
SELECT
	"i"."Value",
	"i"."Id"
FROM
	"Item" "i"
ORDER BY
	"i"."Id"

