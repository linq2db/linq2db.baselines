BeforeExecute
-- Firebird.3 Firebird3 (asynchronously)

SELECT
	"p"."PersonID",
	TRIM(TRAILING '' FROM ("p"."FirstName" || '1'))
FROM
	"Person" "p"

