BeforeExecute
-- Firebird.5 Firebird4 (asynchronously)

SELECT
	"p"."FirstName"
FROM
	"Person" "p"
WHERE
	"p"."FirstName" || ' I' = 'John I'

