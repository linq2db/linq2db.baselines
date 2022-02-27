BeforeExecute
-- Firebird3 Firebird
DECLARE @str VarChar(7) -- String
SET     @str = 'John123'

SELECT
	"p"."FirstName",
	"p"."PersonID",
	"p"."LastName",
	"p"."MiddleName",
	"p"."Gender"
FROM
	"Person" "p"
WHERE
	@str LIKE (Replace(Replace(Replace("p"."FirstName", '~', '~~'), '%', '~%'), '_', '~_') || '%') ESCAPE '~'

