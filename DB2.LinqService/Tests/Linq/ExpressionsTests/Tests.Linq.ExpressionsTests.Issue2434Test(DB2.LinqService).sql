BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"t1"."Id",
	"t1"."FirstName",
	"t1"."LastName",
	"t1"."FirstName" || ' ' || "t1"."LastName"
FROM
	"Issue2434Table" "t1"
ORDER BY
	"t1"."FirstName" || ' ' || "t1"."LastName"

