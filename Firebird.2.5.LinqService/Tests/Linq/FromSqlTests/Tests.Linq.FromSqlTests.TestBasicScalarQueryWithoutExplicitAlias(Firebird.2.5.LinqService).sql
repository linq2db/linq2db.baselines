BeforeExecute
-- Firebird.2.5 Firebird (asynchronously)

SELECT
	"p"."FirstName",
	"p"."PersonID",
	"p"."LastName",
	"p"."MiddleName",
	"p"."Gender"
FROM
	"Person" "p"
		INNER JOIN (
			SELECT 1 FROM "Person"
		) "s"("value") ON "s"."value" = "p"."PersonID"

