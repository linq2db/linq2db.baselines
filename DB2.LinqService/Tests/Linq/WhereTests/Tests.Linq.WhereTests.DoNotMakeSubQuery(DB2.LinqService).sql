BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)

SELECT
	"p2"."PersonID",
	RTRIM(("p2"."FirstName" || ''), '')
FROM
	"Person" "p2"
WHERE
	"p2"."PersonID" = 1

