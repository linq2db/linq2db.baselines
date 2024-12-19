BeforeExecute
-- Firebird.3 Firebird3
DECLARE @p VarChar(1) -- String
SET     @p = '1'

SELECT
	"r"."FirstName",
	"r"."PersonID",
	"r"."LastName",
	"r"."MiddleName",
	"r"."Gender"
FROM
	"Person" "r"
WHERE
	"r"."FirstName" = @p

BeforeExecute
-- Firebird.3 Firebird3

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
-- Firebird.3 Firebird3
DECLARE @p VarChar(1) -- String
SET     @p = '1'

SELECT
	"r"."FirstName",
	"r"."PersonID",
	"r"."LastName",
	"r"."MiddleName",
	"r"."Gender"
FROM
	"Person" "r"
WHERE
	"r"."FirstName" = @p

