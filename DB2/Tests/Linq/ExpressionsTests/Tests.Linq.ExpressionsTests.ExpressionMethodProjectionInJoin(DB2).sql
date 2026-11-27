-- DB2 DB2.LUW DB2LUW
SELECT
	"contract"."Id",
	"servProj"."IdContract"
FROM
	"ProjectionServiceTable" "servProj"
		INNER JOIN "ProjectionContractTable" "contract" ON "servProj"."IdContract" = "contract"."Id"

