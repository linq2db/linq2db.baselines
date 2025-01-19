BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- Firebird.2.5 Firebird

SELECT
	"m_1"."Id",
	"d"."Value"
FROM
	"Item" "m_1"
		INNER JOIN "ItemValue" "d" ON "m_1"."Id" = "d"."ItemId"

BeforeExecute
DisposeTransaction
BeforeExecute
-- Firebird.2.5 Firebird

SELECT
	"x"."Id",
	"x"."Text"
FROM
	"Item" "x"
ORDER BY
	(
		SELECT
			SUM("a_Values"."Value")
		FROM
			"ItemValue" "a_Values"
		WHERE
			"x"."Id" = "a_Values"."ItemId"
	)

