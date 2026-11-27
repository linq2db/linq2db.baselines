-- Firebird.2.5 Firebird
SELECT
	"m_1"."Id",
	"d"."Id",
	"d"."ItemId",
	"d"."Log"
FROM
	"EagerOrderItem" "m_1"
		INNER JOIN "EagerOrderItemLog" "d" ON "m_1"."Id" = "d"."ItemId"
ORDER BY
	"d"."Id",
	"m_1"."Id"

-- Firebird.2.5 Firebird
SELECT
	"i"."Value",
	"i"."Id"
FROM
	"EagerOrderItem" "i"
ORDER BY
	"i"."Id"

