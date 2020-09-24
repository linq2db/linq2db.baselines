BeforeExecute
-- Firebird3 Firebird
DECLARE @p1 Char(1) -- String
SET     @p1 = '0'

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
		ELSE Position('oh', "p"."FirstName") - 1
	END = 1 AND
	"p"."PersonID" = 1

