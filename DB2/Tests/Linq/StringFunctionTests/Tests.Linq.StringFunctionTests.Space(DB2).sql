-- DB2 DB2.LUW DB2LUW

SELECT
	"p"."FirstName",
	"p"."PersonID",
	"p"."LastName",
	"p"."MiddleName",
	"p"."Gender"
FROM
	"Person" "p"
WHERE
	"p"."FirstName" || VarChar(Repeat(' ', "p"."PersonID" + 1), 1000) || '123' = 'John  123' AND
	"p"."PersonID" = 1

