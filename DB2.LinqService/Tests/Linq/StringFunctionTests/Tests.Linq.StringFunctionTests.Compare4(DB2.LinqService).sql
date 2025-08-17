BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)

SELECT
	"p"."FirstName",
	"p"."PersonID",
	"p"."LastName",
	"p"."MiddleName",
	"p"."Gender"
FROM
	"Person" "p"
WHERE
	Lower(Substr("p"."FirstName", 2, 2)) = Lower(Substr('Joh', 2, 2)) AND
	"p"."PersonID" = 1

