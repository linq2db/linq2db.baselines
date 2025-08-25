BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)

SELECT
	"g_1"."FirstName",
	COUNT(*)
FROM
	"Person" "g_1"
GROUP BY
	"g_1"."FirstName"
ORDER BY
	"g_1"."FirstName"

