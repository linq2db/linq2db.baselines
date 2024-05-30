BeforeExecute
-- Firebird.4 Firebird4 (asynchronously)

SELECT
	"p"."FirstName"
FROM
	"Person" "p"
WHERE
	"p"."PersonID" = 1
FETCH NEXT 1 ROWS ONLY

