BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"p"."PersonID",
	"p"."FirstName"
FROM
	"Person" "p"
WHERE
	LTRIM(('  ' || "p"."FirstName" || ' '), ' J') = 'ohn ' AND
	"p"."PersonID" = 1

