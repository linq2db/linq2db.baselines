BeforeExecute
-- Firebird.5 Firebird4 (asynchronously)

SELECT
	"m_1"."Id",
	"d"."Value"
FROM
	"Item" "m_1"
		INNER JOIN "ItemValue" "d" ON "m_1"."Id" = "d"."ItemId"

BeforeExecute
-- Firebird.5 Firebird4 (asynchronously)

SELECT
	"x"."Id",
	"x"."Text"
FROM
	"Item" "x"

