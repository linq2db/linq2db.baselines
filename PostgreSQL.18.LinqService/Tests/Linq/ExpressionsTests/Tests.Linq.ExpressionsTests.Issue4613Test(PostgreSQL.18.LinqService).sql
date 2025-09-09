BeforeExecute
-- PostgreSQL.18 PostgreSQL (asynchronously)

SELECT
	contract."Id",
	"servProj"."IdContract"
FROM
	"Issue4613Service" "servProj"
		INNER JOIN "Issue4613Contract" contract ON "servProj"."IdContract" = contract."Id"

