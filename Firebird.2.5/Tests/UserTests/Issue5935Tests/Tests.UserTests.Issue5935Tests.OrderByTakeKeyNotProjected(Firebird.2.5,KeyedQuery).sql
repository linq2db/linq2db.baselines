-- Firebird.2.5 Firebird
SELECT
	"i"."Value",
	"i"."Id"
FROM
	"Item" "i"
ORDER BY
	"i"."Id"

-- Firebird.2.5 Firebird
SELECT
	"k_1"."item",
	"d"."Id",
	"d"."ItemId",
	"d"."Log"
FROM
	(
		SELECT 1 AS "item" FROM rdb$database
		UNION ALL
		SELECT 2 FROM rdb$database) "k_1"
		INNER JOIN "ItemLog" "d" ON "k_1"."item" = "d"."ItemId"
ORDER BY
	"d"."Id"

