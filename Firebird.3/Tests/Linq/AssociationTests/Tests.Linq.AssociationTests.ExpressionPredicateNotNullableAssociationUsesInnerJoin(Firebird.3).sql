-- Firebird.3 Firebird3
SELECT
	"a_Client1"."Name"
FROM
	"ExpressionAssociationService" "s"
		INNER JOIN "ExpressionAssociationClient" "a_Client1" ON "s"."IdClient" = "a_Client1"."Id"

