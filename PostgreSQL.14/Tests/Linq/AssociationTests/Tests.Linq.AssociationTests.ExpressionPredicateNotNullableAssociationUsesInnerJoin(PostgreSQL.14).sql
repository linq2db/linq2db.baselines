-- PostgreSQL.14 PostgreSQL.13 PostgreSQL12
SELECT
	"a_Client1"."Name"
FROM
	"ExpressionAssociationService" s
		INNER JOIN "ExpressionAssociationClient" "a_Client1" ON s."IdClient" = "a_Client1"."Id"

