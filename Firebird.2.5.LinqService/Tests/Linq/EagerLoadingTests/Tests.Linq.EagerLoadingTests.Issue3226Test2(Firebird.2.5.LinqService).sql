BeforeExecute
-- Firebird.2.5 Firebird

SELECT
	"m_1"."Id",
	"d"."Value"
FROM
	"Item" "m_1"
		INNER JOIN "ItemValue" "d" ON "m_1"."Id" = "d"."ItemId"

BeforeExecute
-- Firebird.2.5 Firebird

SELECT
	"x"."Id",
	"x"."Text"
FROM
	"Item" "x"

