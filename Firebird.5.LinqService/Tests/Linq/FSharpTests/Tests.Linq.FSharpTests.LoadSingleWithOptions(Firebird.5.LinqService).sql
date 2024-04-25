BeforeExecute
-- Firebird.5 Firebird4
DECLARE @ID Integer -- Int32
SET     @ID = 1

SELECT
	"p"."PersonID",
	"p"."FirstName",
	"p"."LastName",
	"p"."MiddleName",
	"p"."Gender"
FROM
	"Person" "p"
WHERE
	"p"."PersonID" = @ID
FETCH NEXT 2 ROWS ONLY

