-- Firebird.2.5 Firebird

SELECT
	"p"."FirstName",
	"p"."PersonID",
	"p"."LastName",
	"p"."MiddleName",
	"p"."Gender"
FROM
	"Person" "p"
		INNER JOIN (
			SELECT 1 AS "value" FROM "Person"
		) "s"("value") ON "s"."value" = "p"."PersonID"

