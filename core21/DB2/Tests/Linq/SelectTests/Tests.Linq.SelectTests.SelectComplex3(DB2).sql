BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT 
	"_"."PersonID", 
	"_"."Gender", 
	"_"."FirstName", 
	"_"."LastName", 
	"_"."MiddleName"
FROM
	"Person" "_"
WHERE
	"_"."PersonID" = 1
FETCH FIRST 1 ROWS ONLY

