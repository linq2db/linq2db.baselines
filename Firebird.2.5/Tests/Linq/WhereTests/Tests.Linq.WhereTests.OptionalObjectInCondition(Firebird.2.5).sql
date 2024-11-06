BeforeExecute
-- Firebird.2.5 Firebird
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
-- Firebird.2.5 Firebird

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
-- Firebird.2.5 Firebird
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

