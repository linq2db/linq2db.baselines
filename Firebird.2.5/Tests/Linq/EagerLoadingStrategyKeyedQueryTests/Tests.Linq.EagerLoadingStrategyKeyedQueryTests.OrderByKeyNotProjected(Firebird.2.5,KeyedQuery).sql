-- Firebird.2.5 Firebird
SELECT
	"i"."Value",
	"i"."Id"
FROM
	"EagerOrderItem" "i"
ORDER BY
	"i"."Id"

-- Firebird.2.5 Firebird
SELECT
	"l"."ItemId",
	"l"."Log"
FROM
	"EagerOrderItemLog" "l"
WHERE
	"l"."ItemId" IN (1, 2)
ORDER BY
	"l"."Id"

