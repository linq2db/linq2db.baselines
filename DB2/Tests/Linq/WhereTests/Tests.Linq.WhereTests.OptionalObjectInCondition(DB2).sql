BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @FirstName VarChar(1) -- String
SET     @FirstName = '1'

SELECT
	"r"."FirstName",
	"r"."PersonID",
	"r"."LastName",
	"r"."MiddleName",
	"r"."Gender"
FROM
	"Person" "r"
WHERE
	"r"."FirstName" = @FirstName

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"r"."FirstName",
	"r"."PersonID",
	"r"."LastName",
	"r"."MiddleName",
	"r"."Gender"
FROM
	"Person" "r"
WHERE
	1 = 0

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @FirstName VarChar(1) -- String
SET     @FirstName = '1'

SELECT
	"r"."FirstName",
	"r"."PersonID",
	"r"."LastName",
	"r"."MiddleName",
	"r"."Gender"
FROM
	"Person" "r"
WHERE
	"r"."FirstName" = @FirstName

