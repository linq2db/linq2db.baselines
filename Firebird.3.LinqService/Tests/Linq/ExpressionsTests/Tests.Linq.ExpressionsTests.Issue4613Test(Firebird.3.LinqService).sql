BeforeExecute
-- Firebird.3 Firebird3 (asynchronously)

SELECT
	"contract"."Id",
	"servProj"."IdContract"
FROM
	"Issue4613Service" "servProj"
		INNER JOIN "Issue4613Contract" "contract" ON "servProj"."IdContract" = "contract"."Id"

