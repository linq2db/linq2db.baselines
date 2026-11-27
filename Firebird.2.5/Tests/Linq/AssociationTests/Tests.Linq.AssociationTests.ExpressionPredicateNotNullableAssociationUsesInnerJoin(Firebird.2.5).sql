-- Firebird.2.5 Firebird
SELECT
	"a_Client1"."Name"
FROM
	"ExpressionAssociationService" "s"
		INNER JOIN "ExpressionAssociationClient" "a_Client1" ON "s"."IdClient" = "a_Client1"."Id"

