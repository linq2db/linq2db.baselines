BeforeExecute
-- Firebird.2.5 Firebird (asynchronously)

SELECT
	"p"."PersonID",
	TRIM(TRAILING '' FROM ("p"."FirstName" || '1'))
FROM
	"Person" "p"

