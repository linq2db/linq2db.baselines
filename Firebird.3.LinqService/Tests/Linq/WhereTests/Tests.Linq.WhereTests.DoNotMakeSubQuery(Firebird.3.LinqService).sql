BeforeExecute
-- Firebird.3 Firebird3 (asynchronously)

SELECT
	"p2"."PersonID",
	TRIM(TRAILING '' FROM ("p2"."FirstName" || ''))
FROM
	"Person" "p2"
WHERE
	"p2"."PersonID" = 1

