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
	'123' || CASE
		WHEN CHAR_LENGTH("p"."FirstName") > 6 THEN "p"."FirstName"
		ELSE VarChar(Repeat(' ', 6 - CHAR_LENGTH("p"."FirstName")), 1000) || "p"."FirstName"
	END = '123  John' AND
	"p"."PersonID" = 1

