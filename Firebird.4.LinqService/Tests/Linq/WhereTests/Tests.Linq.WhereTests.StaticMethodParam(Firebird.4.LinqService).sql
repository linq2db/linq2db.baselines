BeforeExecute
-- Firebird.4 Firebird4 (asynchronously)
DECLARE @p Integer -- Int32
SET     @p = 1

SELECT
	"p"."FirstName",
	"p"."PersonID",
	"p"."LastName",
	"p"."MiddleName",
	"p"."Gender"
FROM
	"Person" "p"
WHERE
	"p"."PersonID" = @p

