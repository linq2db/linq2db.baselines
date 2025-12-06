-- DB2 DB2.LUW DB2LUW

SELECT
	(RTrim(Char(COUNT(*))) || ' items have not been processed, e.g. #' || Coalesce(RTrim(Char(MIN("g_1"."PersonID"))), '')) || '.'
FROM
	"Person" "g_1"
WHERE
	"g_1"."LastName" <> 'ERROR'
HAVING
	COUNT(*) > 0

