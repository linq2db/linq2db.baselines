BeforeExecute
-- Firebird.2.5 Firebird (asynchronously)

SELECT
	"m_1"."Id",
	"d"."Id",
	"d"."MainEntityId"
FROM
	"MainEntity" "m_1"
		INNER JOIN "SubEntity" "d" ON "m_1"."Id" = "d"."MainEntityId"

BeforeExecute
-- Firebird.2.5 Firebird (asynchronously)

SELECT
	"x"."Id"
FROM
	"MainEntity" "x"

