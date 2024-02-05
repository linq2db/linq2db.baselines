BeforeExecute
-- Firebird3 Firebird
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
-- Firebird3 Firebird

SELECT
	"r"."FirstName",
	"r"."PersonID",
	"r"."LastName",
	"r"."MiddleName",
	"r"."Gender"
FROM
	"Person" "r"
WHERE
	"r"."FirstName" IS NULL

BeforeExecute
-- Firebird3 Firebird
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

