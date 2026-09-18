-- DB2 DB2.LUW DB2LUW
SELECT
	"m_1"."Id",
	"a_Tags"."Id",
	"a_Tags"."LogId",
	"a_Tags"."Name"
FROM
	"Item" "m_1"
		INNER JOIN "ItemLog" "d" ON "m_1"."Id" = "d"."ItemId"
		INNER JOIN "ItemTag" "a_Tags" ON "d"."Id" = "a_Tags"."LogId"
ORDER BY
	"d"."Id",
	"m_1"."Id"

-- DB2 DB2.LUW DB2LUW
SELECT
	"i"."Value",
	"i"."Id"
FROM
	"Item" "i"
ORDER BY
	"i"."Id"

