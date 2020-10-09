BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT 
	"p"."PersonID", 
	Coalesce("p"."MiddleName", "p"."FirstName", 'None'), 
	Coalesce("p"."LastName", "p"."FirstName", 'None'), 
	Coalesce("p"."MiddleName", "p"."MiddleName", 'None')
FROM
	"Person" "p"
WHERE
	"p"."PersonID" = 1

