﻿BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"m_1"."Id",
	"d"."Id",
	"d"."Amount",
	"d"."Currency"
FROM
	"TransactionEntity" "m_1"
		INNER JOIN "LineEntity" "d" ON "m_1"."Id" = "d"."TransactionId"

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"x"."Id",
	"x"."ValidOn"
FROM
	"TransactionEntity" "x"
ORDER BY
	"x"."ValidOn"

