BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)

SELECT
	"t1"."MiddleName",
	COUNT(*)
FROM
	"Person" "t1"
GROUP BY
	"t1"."MiddleName"
HAVING
	"t1"."MiddleName" IS NULL OR "t1"."MiddleName" <> 'Unknown'

