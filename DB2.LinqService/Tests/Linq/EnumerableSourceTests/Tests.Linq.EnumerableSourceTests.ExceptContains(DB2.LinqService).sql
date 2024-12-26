BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	CAST("r"."PersonID" IN (1, 2, 3) AS smallint)
FROM
	"Person" "r"

