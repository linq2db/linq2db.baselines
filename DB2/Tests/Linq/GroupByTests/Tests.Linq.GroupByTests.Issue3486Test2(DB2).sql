-- DB2 DB2.LUW DB2LUW

SELECT
	"gr"."FirstName",
	"gr"."LastName",
	SUM("gr"."PersonID")
FROM
	"Person" "gr"
GROUP BY
	"gr"."FirstName",
	"gr"."LastName"

