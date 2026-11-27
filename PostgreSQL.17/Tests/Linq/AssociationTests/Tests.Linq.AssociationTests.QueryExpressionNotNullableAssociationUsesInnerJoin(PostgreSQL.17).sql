-- PostgreSQL.17 PostgreSQL.15 PostgreSQL12
SELECT
	"a_Client2"."Name"
FROM
	"ExpressionAssociationService" s
		INNER JOIN "ExpressionAssociationClient" "a_Client2" ON "a_Client2"."Id" = s."IdClient"

