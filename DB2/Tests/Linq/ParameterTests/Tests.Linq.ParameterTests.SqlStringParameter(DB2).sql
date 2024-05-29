BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @p VarChar(4) -- String
SET     @p = 'John'

SELECT
	"t"."PersonID",
	"t"."FirstName",
	"t"."LastName",
	"t"."MiddleName",
	"t"."Gender"
FROM
	"Person" "t"
WHERE
	"t"."FirstName" = @p
FETCH NEXT 2 ROWS ONLY

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @p VarChar(6) -- String
SET     @p = 'Tester'

SELECT
	"t"."PersonID",
	"t"."FirstName",
	"t"."LastName",
	"t"."MiddleName",
	"t"."Gender"
FROM
	"Person" "t"
WHERE
	"t"."FirstName" = @p
FETCH NEXT 2 ROWS ONLY

