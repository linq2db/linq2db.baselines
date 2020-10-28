BeforeExecute
-- Firebird

SELECT
	"p"."FirstName",
	"p"."PersonID",
	"p"."LastName",
	"p"."MiddleName",
	"p"."Gender"
FROM
	"Person" "p"
WHERE
	LOWER("p"."FirstName") LIKE '%hn' ESCAPE '~' AND "p"."PersonID" = 1

