BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT 
	"t1"."FirstName", 
	Count(*)
FROM
	"Person" "t1"
GROUP BY
	"t1"."FirstName"
ORDER BY
	"t1"."FirstName"

