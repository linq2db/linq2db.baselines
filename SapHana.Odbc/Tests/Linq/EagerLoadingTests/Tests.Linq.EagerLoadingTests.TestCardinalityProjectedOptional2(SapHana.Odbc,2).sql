﻿BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"m_1"."Id",
	"d"."Id",
	"a_ObjectD"."Id",
	"a_ObjectD"."FK"
FROM
	"EntityMA" "m_1"
		INNER JOIN "EntityMB" "d" ON "m_1"."Id" = "d"."FK"
		LEFT JOIN "EntityMD" "a_ObjectD" ON "d"."FKD" = "a_ObjectD"."Id"

BeforeExecute
DisposeTransaction
BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"e"."Id"
FROM
	"EntityMA" "e"

