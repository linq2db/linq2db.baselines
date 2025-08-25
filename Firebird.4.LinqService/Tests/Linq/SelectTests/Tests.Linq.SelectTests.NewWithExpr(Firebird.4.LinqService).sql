BeforeExecute
-- Firebird.4 Firebird4 (asynchronously)

SELECT
	"p"."PersonID",
	TRIM(TRAILING '' FROM ("p"."FirstName" || '1'))
FROM
	"Person" "p"

