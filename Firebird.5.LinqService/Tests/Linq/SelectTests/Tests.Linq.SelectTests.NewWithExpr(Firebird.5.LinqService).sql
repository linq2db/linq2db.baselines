BeforeExecute
-- Firebird.5 Firebird4 (asynchronously)

SELECT
	"p"."PersonID",
	TRIM(TRAILING '' FROM ("p"."FirstName" || '1'))
FROM
	"Person" "p"

