-- Firebird.2.5 Firebird
DECLARE @take Integer -- Int32
SET     @take = 1

SELECT FIRST @take
	"p"."PersonID",
	"p"."FirstName",
	"p"."LastName",
	"p"."MiddleName",
	"p"."Gender"
FROM
	"Person" "p"
WHERE
	"p"."PersonID" = 1

