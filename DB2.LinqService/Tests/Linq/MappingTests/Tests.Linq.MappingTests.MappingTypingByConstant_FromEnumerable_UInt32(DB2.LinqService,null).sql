BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)

SELECT
	"arg"."Id",
	"arg"."Value"
FROM
	"Person" "entity"
		INNER JOIN (VALUES
			(1,CAST(NULL AS BigInt))
		) "arg"("Id", "Value") ON "entity"."PersonID" = "arg"."Id"

BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)

SELECT
	"arg"."Id",
	"arg"."Value"
FROM
	"Person" "entity"
		INNER JOIN (VALUES
			(1,2147483648)
		) "arg"("Id", "Value") ON "entity"."PersonID" = "arg"."Id"

