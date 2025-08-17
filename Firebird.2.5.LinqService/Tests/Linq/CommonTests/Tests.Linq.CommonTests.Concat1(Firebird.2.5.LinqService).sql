BeforeExecute
-- Firebird.2.5 Firebird (asynchronously)

SELECT
	"p"."FirstName"
FROM
	"Person" "p"
WHERE
	"p"."FirstName" || ' I' = 'John I'

