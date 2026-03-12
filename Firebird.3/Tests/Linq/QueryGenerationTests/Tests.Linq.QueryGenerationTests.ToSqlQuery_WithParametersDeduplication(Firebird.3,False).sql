-- Firebird.3 Firebird3
DECLARE @firstName VarChar(255) -- String
SET     @firstName = 'John'

SELECT
	"p"."FirstName",
	"p"."PersonID",
	"p"."LastName",
	"p"."MiddleName",
	"p"."Gender"
FROM
	"Person" "p"
WHERE
	"p"."FirstName" = @firstName OR "p"."LastName" = @firstName

-- Firebird.3 Firebird3
DECLARE @firstName VarChar(4) -- String
SET     @firstName = 'John'

SELECT
	"p"."FirstName",
	"p"."PersonID",
	"p"."LastName",
	"p"."MiddleName",
	"p"."Gender"
FROM
	"Person" "p"
WHERE
	"p"."FirstName" = @firstName OR "p"."LastName" = @firstName
FETCH NEXT 2 ROWS ONLY

