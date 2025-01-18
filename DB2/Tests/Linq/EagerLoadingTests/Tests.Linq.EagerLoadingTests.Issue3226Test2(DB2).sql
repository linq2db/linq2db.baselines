BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"m_1"."Id",
	"d"."Value"
FROM
	"Item" "m_1"
		INNER JOIN "ItemValue" "d" ON "m_1"."Id" = "d"."ItemId"

BeforeExecute
DisposeTransaction
BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"x"."Id",
	"x"."Text"
FROM
	"Item" "x"

