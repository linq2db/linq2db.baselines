BeforeExecute
-- Firebird.3 Firebird3 (asynchronously)

SELECT
	"p"."FirstName"
FROM
	"Person" "p"
WHERE
	"p"."FirstName" || ' ' || 1 = 'John 1'

