-- Firebird.4 Firebird4
SELECT
	"i"."Value",
	"i"."Id"
FROM
	"Item" "i"
ORDER BY
	"i"."Id"

-- Firebird.4 Firebird4
SELECT
	"k_1"."item",
	"d_1"."Id",
	"d_1"."ItemId",
	"d_1"."Log"
FROM
	(
		SELECT 1 AS "item" FROM rdb$database
		UNION ALL
		SELECT 2 FROM rdb$database) "k_1"
		CROSS JOIN LATERAL (
			SELECT
				"d"."Id",
				"d"."ItemId",
				"d"."Log"
			FROM
				"ItemLog" "d"
			WHERE
				"k_1"."item" = "d"."ItemId"
			ORDER BY
				"d"."Id" DESC
			FETCH NEXT 2 ROWS ONLY
		) "d_1"

