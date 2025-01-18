BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"contract"."Id",
	"servProj"."IdContract"
FROM
	"Issue4613Service" "servProj"
		INNER JOIN "Issue4613Contract" "contract" ON "servProj"."IdContract" = "contract"."Id"

