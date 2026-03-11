-- DB2 DB2.LUW DB2LUW

SELECT
	"p"."FirstName",
	COUNT(*)
FROM
	"Person" "p"
GROUP BY
	"p"."FirstName"

