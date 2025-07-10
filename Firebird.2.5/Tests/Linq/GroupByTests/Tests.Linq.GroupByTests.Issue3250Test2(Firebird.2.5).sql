BeforeExecute
-- Firebird.2.5 Firebird

SELECT
	(COUNT(*) || ' items have not been processed, e.g. #' || MIN("s"."PersonID")) || '.'
FROM
	"Person" "s"
WHERE
	"s"."LastName" <> 'ERROR'
HAVING
	COUNT(*) > 0

