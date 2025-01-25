BeforeExecute
-- Firebird.5 Firebird4
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
-- Firebird.5 Firebird4
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

