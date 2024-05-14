BeforeExecute
-- Firebird.5 Firebird4
DECLARE @p VarChar(1) -- String
SET     @p = 'p'

SELECT
	"p"."FirstName",
	"p"."PersonID",
	"p"."LastName",
	"p"."MiddleName",
	"p"."Gender"
FROM
	"Person" "p"
WHERE
	Char_Length("p"."LastName") - Position('p', Reverse("p"."LastName")) = 2 AND
	Position(@p, "p"."LastName") <> 0 AND "p"."PersonID" = 1

