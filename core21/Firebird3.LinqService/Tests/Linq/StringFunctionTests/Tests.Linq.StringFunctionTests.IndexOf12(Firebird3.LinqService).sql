BeforeExecute
-- Firebird3 Firebird
DECLARE @p1 Char(1) -- String
SET     @p1 = '1'

SELECT
	"p"."FirstName",
	"p"."PersonID",
	"p"."LastName",
	"p"."MiddleName",
	"p"."Gender"
FROM
	"Person" "p"
WHERE
	CASE
		WHEN @p1 = 1 THEN 0
		ELSE Position('', "p"."FirstName") - 1
	END = 0 AND
	"p"."PersonID" = 1

