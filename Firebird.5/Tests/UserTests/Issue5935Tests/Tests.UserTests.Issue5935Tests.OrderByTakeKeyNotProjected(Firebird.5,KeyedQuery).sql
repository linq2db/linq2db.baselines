-- Firebird.5 Firebird4
SELECT
	"i"."Value",
	"i"."Id"
FROM
	"Item" "i"
ORDER BY
	"i"."Id"

-- Firebird.5 Firebird4
SELECT
	"k_1"."item",
	"d_1"."Log"
FROM
	(
		SELECT 1 AS "item" FROM rdb$database
		UNION ALL
		SELECT 2 FROM rdb$database) "k_1"
		CROSS JOIN LATERAL (
			SELECT
				"d"."Log"
			FROM
				"ItemLog" "d"
			WHERE
				"k_1"."item" = "d"."ItemId"
			ORDER BY
				"d"."Id"
			FETCH NEXT 2 ROWS ONLY
		) "d_1"

