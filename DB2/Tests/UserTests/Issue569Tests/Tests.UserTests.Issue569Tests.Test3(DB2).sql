-- DB2 DB2.LUW DB2LUW

SELECT
	"p"."PersonID",
	"pt"."PersonID",
	"d"."Taxonomy"
FROM
	"Person" "p",
	"Patient" "pt",
	"Doctor" "d"
ORDER BY
	"p"."PersonID",
	"pt"."PersonID",
	"d"."Taxonomy"

