-- Firebird.5 Firebird4
SELECT
	"i"."Value",
	"i"."Id"
FROM
	"EagerOrderItem" "i"
ORDER BY
	"i"."Id"

-- Firebird.5 Firebird4
SELECT
	"k_1"."item",
	"a_Tags"."Id",
	"a_Tags"."LogId",
	"a_Tags"."Name"
FROM
	(
		SELECT 1 AS "item" FROM rdb$database
		UNION ALL
		SELECT 2 FROM rdb$database) "k_1"
		INNER JOIN "EagerOrderItemLog" "d" ON "k_1"."item" = "d"."ItemId"
		INNER JOIN "EagerOrderItemTag" "a_Tags" ON "d"."Id" = "a_Tags"."LogId"
ORDER BY
	"d"."Id" DESC

