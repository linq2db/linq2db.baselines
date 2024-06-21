BeforeExecute
-- Firebird.5 Firebird4
DECLARE @abcdefghijabcdefghijabcdefghijabcdefghijabcdefghij Integer -- Int32
SET     @abcdefghijabcdefghijabcdefghijabcdefghijabcdefghij = 1

SELECT
	"r"."FirstName",
	"r"."PersonID",
	"r"."LastName",
	"r"."MiddleName",
	"r"."Gender"
FROM
	"Person" "r"
WHERE
	"r"."PersonID" = @abcdefghijabcdefghijabcdefghijabcdefghijabcdefghij

