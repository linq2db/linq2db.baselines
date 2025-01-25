BeforeExecute
-- Firebird.2.5 Firebird
DECLARE @ID Integer -- Int32
SET     @ID = 1

SELECT FIRST 2
	"p"."PersonID",
	"p"."FirstName",
	"p"."MiddleName",
	"p"."LastName",
	"p"."Gender"
FROM
	"Person" "p"
WHERE
	"p"."PersonID" = @ID

