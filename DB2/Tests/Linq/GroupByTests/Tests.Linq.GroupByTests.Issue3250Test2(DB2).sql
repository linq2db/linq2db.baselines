BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	(COUNT(*) || ' items have not been processed, e.g. #' || MIN("s"."PersonID")) || '.'
FROM
	"Person" "s"
WHERE
	"s"."LastName" <> 'ERROR'
HAVING
	COUNT(*) > 0

