BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"p"."FirstName"
FROM
	"Person" "p"
WHERE
	"p"."FirstName" || ' ' || 1 = 'John 1'

