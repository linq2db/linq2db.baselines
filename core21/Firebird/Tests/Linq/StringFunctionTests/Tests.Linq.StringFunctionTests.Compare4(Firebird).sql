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
	CASE
		WHEN Lower(Substring("p"."FirstName" from 2 for 2)) > 'oh'
			THEN 1
		WHEN Lower(Substring("p"."FirstName" from 2 for 2)) = 'oh'
			THEN 0
		ELSE -1
	END = 0 AND
	"p"."PersonID" = 1

