BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT 
	"_"."FirstName", 
	"_"."PersonID", 
	"_"."LastName", 
	"_"."MiddleName", 
	"_"."Gender"
FROM
	"Person" "_"
WHERE
	"_"."PersonID" = 1
FETCH FIRST 2 ROWS ONLY

