BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT 
	"p"."PersonID", 
	"p"."FirstName"
FROM
	"Person" "p"
WHERE
	Trim('  ' || "p"."FirstName" || ' ') = 'John' AND "p"."PersonID" = 1

