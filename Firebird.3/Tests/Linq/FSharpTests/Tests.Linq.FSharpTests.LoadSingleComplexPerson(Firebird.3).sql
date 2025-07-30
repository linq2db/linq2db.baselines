BeforeExecute
-- Firebird.3 Firebird3
DECLARE @p Integer -- Int32
SET     @p = 1

SELECT
	"p"."PersonID",
	"p"."FirstName",
	"p"."MiddleName",
	"p"."LastName",
	"p"."Gender"
FROM
	"Person" "p"
WHERE
	"p"."PersonID" = @p
FETCH NEXT 2 ROWS ONLY

