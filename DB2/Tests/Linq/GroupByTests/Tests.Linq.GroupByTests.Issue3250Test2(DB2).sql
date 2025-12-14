-- DB2 DB2.LUW DB2LUW

SELECT
	(RTrim(Char(COUNT(*))) || ' items have not been processed, e.g. #' || Coalesce(RTrim(Char(MIN("s"."PersonID"))), '')) || '.'
FROM
	"Person" "s"
WHERE
	"s"."LastName" <> 'ERROR'
HAVING
	COUNT(*) > 0

