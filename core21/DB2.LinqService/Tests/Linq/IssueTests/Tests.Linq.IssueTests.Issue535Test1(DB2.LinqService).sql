BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"p"."PersonID",
	"p"."FirstName",
	"p"."LastName"
FROM
	"Person" "p"
WHERE
	"p"."FirstName" LIKE 'J%' AND ("p"."PersonID" = 1 OR "p"."LastName" = 'fail')
FETCH FIRST 1 ROWS ONLY

