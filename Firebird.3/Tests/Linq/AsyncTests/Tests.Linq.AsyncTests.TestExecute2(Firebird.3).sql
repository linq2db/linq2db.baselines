BeforeExecute
-- Firebird.3 Firebird3 (asynchronously)

SELECT
	"p"."FirstName"
FROM
	"Person" "p"
WHERE
	"p"."PersonID" = 1
FETCH NEXT 1 ROWS ONLY

