-- DB2 DB2.LUW DB2LUW

SELECT
	"e"."PersonID",
	"e"."FirstName",
	"e"."LastName",
	"e"."FirstName" || ':' || "e"."LastName"
FROM
	"Person" "e"
WHERE
	"e"."PersonID" = 1
FETCH NEXT 2 ROWS ONLY

