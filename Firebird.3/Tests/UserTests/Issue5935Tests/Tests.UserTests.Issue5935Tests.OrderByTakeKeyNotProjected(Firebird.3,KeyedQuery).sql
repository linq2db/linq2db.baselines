-- Firebird.3 Firebird3
SELECT
	"i"."Value",
	"i"."Id"
FROM
	"Item" "i"
ORDER BY
	"i"."Id"

-- Firebird.3 Firebird3
SELECT
	"k_1"."item",
	"d_1"."Log"
FROM
	(
		SELECT 1 AS "item" FROM rdb$database
		UNION ALL
		SELECT 2 FROM rdb$database) "k_1"
		INNER JOIN (
			SELECT
				"d"."Log",
				ROW_NUMBER() OVER (PARTITION BY "d"."ItemId" ORDER BY "d"."Id") as "rn",
				"d"."ItemId",
				"d"."Id"
			FROM
				"ItemLog" "d"
		) "d_1" ON "k_1"."item" = "d_1"."ItemId" AND "d_1"."rn" <= 2
ORDER BY
	"d_1"."Id"

