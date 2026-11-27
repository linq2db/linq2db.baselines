-- PostgreSQL.14 PostgreSQL.13 PostgreSQL12
SELECT
	contract."Id",
	"servProj"."IdContract"
FROM
	"ProjectionServiceTable" "servProj"
		INNER JOIN "ProjectionContractTable" contract ON "servProj"."IdContract" = contract."Id"

