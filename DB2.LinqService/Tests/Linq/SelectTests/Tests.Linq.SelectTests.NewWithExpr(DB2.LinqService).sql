BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"p"."PersonID",
	RTRIM(("p"."FirstName" || '1'), '')
FROM
	"Person" "p"

