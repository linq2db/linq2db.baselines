BeforeExecute
-- Firebird3 Firebird

SELECT
	"t1"."FirstName"
FROM
	"Person" "t1"
GROUP BY
	"t1"."FirstName"

BeforeExecute
-- Firebird3 Firebird
DECLARE @FirstName VarChar(4) -- String
SET     @FirstName = 'Jane'

SELECT
	"keyParam"."FirstName",
	"keyParam"."PersonID",
	"keyParam"."LastName",
	"keyParam"."MiddleName",
	"keyParam"."Gender"
FROM
	"Person" "keyParam"
WHERE
	"keyParam"."FirstName" = @FirstName

BeforeExecute
-- Firebird3 Firebird
DECLARE @FirstName VarChar(4) -- String
SET     @FirstName = 'John'

SELECT
	"keyParam"."FirstName",
	"keyParam"."PersonID",
	"keyParam"."LastName",
	"keyParam"."MiddleName",
	"keyParam"."Gender"
FROM
	"Person" "keyParam"
WHERE
	"keyParam"."FirstName" = @FirstName

BeforeExecute
-- Firebird3 Firebird
DECLARE @FirstName VarChar(6) -- String
SET     @FirstName = _utf8 x'4AC3BC7267656E'

SELECT
	"keyParam"."FirstName",
	"keyParam"."PersonID",
	"keyParam"."LastName",
	"keyParam"."MiddleName",
	"keyParam"."Gender"
FROM
	"Person" "keyParam"
WHERE
	"keyParam"."FirstName" = @FirstName

BeforeExecute
-- Firebird3 Firebird
DECLARE @FirstName VarChar(6) -- String
SET     @FirstName = 'Tester'

SELECT
	"keyParam"."FirstName",
	"keyParam"."PersonID",
	"keyParam"."LastName",
	"keyParam"."MiddleName",
	"keyParam"."Gender"
FROM
	"Person" "keyParam"
WHERE
	"keyParam"."FirstName" = @FirstName

