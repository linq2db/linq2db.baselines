-- Firebird.4 Firebird4
SELECT
	"i"."Value",
	"i"."Id"
FROM
	"EagerOrderItem" "i"
ORDER BY
	"i"."Id"

-- Firebird.4 Firebird4
SELECT
	"l"."ItemId",
	"l"."Id",
	"l"."Log"
FROM
	"EagerOrderItemLog" "l"
WHERE
	"l"."ItemId" IN (1, 2)
ORDER BY
	"l"."Id" DESC

