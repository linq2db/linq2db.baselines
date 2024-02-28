BeforeExecute
-- Firebird4 Firebird

SELECT
	Count(*)
FROM
	"Person" "p"
WHERE
	"p"."PersonID" = 1 AND '123[456' LIKE '%[%' ESCAPE '~'

