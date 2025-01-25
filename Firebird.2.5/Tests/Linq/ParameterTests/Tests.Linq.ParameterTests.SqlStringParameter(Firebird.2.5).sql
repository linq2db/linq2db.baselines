BeforeExecute
-- Firebird.2.5 Firebird
DECLARE @p VarChar(4) -- String
SET     @p = 'John'

SELECT FIRST 2
	"t"."PersonID",
	"t"."FirstName",
	"t"."LastName",
	"t"."MiddleName",
	"t"."Gender"
FROM
	"Person" "t"
WHERE
	"t"."FirstName" = @p

BeforeExecute
-- Firebird.2.5 Firebird
DECLARE @p VarChar(6) -- String
SET     @p = 'Tester'

SELECT FIRST 2
	"t"."PersonID",
	"t"."FirstName",
	"t"."LastName",
	"t"."MiddleName",
	"t"."Gender"
FROM
	"Person" "t"
WHERE
	"t"."FirstName" = @p

