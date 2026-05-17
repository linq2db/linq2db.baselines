-- Firebird.3 Firebird3

SELECT
	"t1"."FirstName",
	"t1".ID,
	"t1"."LastName",
	"t1"."MiddleName",
	"t1"."Gender"
FROM
	(
		SELECT
			"p"."FirstName" LIKE '%Jo%' ESCAPE '~' as "Field1",
			"p"."FirstName",
			"p"."PersonID" as ID,
			"p"."LastName",
			"p"."MiddleName",
			"p"."Gender"
		FROM
			"Person" "p"
	) "t1"
WHERE
	"t1"."Field1"
ORDER BY
	"t1"."Field1"

