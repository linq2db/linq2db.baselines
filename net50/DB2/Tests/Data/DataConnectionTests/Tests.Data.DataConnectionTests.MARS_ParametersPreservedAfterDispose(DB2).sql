BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @param VarChar(4) -- String
SET     @param = 'test'

SELECT
	"_"."FirstName",
	"_"."PersonID",
	"_"."LastName",
	"_"."MiddleName",
	"_"."Gender"
FROM
	"Person" "_"
WHERE
	"_"."LastName" = @param

