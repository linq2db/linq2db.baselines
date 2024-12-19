BeforeExecute
-- Firebird.2.5 Firebird

SELECT
	"p"."FirstName",
	"p"."PersonID",
	"p"."LastName",
	"p"."MiddleName",
	"p"."Gender"
FROM
	"Person" "p"
WHERE
	"p"."FirstName" IN ('John', 'Pupkin') OR "p"."LastName" IN ('John', 'Pupkin')

