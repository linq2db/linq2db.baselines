BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"arg"."Id",
	"arg"."Value"
FROM
	"Person" "entity"
		INNER JOIN (VALUES
			(1,CAST(NULL AS Float))
		) "arg"("Id", "Value") ON "entity"."PersonID" = "arg"."Id"

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"arg"."Id",
	"arg"."Value"
FROM
	"Person" "entity"
		INNER JOIN (VALUES
			(1,3147483648)
		) "arg"("Id", "Value") ON "entity"."PersonID" = "arg"."Id"

