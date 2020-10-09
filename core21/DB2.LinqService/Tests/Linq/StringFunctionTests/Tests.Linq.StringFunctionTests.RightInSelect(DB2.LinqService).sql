BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT 
	Right("p"."FirstName", 3)
FROM
	"Person" "p"
WHERE
	"p"."PersonID" = 1

