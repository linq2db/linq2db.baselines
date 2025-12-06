-- Firebird.4 Firebird4
DECLARE @id Integer -- Int32
SET     @id = 1

SELECT
	"p"."FirstName",
	"p"."PersonID",
	"p"."LastName",
	"p"."MiddleName",
	"p"."Gender"
FROM
	"Person" "p"
WHERE
	"p"."PersonID" = @id AND "p"."MiddleName" IS NULL

