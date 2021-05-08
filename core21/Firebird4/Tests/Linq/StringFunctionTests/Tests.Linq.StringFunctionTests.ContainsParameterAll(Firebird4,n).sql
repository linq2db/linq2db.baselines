BeforeExecute
-- Firebird4 Firebird

SELECT
	Count(*)
FROM
	"Person" "p"
WHERE
	"p"."PersonID" = 1 AND '123n456' CONTAINING 'n'

