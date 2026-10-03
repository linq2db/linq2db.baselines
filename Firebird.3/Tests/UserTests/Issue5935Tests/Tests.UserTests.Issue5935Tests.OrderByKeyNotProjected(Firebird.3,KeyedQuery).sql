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
	"l"."ItemId",
	"l"."Log"
FROM
	"ItemLog" "l"
WHERE
	"l"."ItemId" IN (1, 2)
ORDER BY
	"l"."Id"

