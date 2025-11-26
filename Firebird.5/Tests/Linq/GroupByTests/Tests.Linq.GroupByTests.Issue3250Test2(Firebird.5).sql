-- Firebird.5 Firebird4

SELECT
	(COUNT(*) || ' items have not been processed, e.g. #' || Coalesce(MIN("s"."PersonID"), '')) || '.'
FROM
	"Person" "s"
WHERE
	"s"."LastName" <> 'ERROR'
HAVING
	COUNT(*) > 0

