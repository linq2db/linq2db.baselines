BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)

SELECT
	MAX("r"."PersonID")
FROM
	"Person" "r"
UNION ALL
SELECT
	"r_1"."PersonID"
FROM
	"Person" "r_1"

