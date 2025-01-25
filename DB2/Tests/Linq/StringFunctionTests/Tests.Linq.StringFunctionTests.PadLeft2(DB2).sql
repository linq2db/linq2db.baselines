BeforeExecute
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
	'123' || CASE
		WHEN CHARACTER_LENGTH("p"."FirstName",CODEUNITS32) > 6 THEN "p"."FirstName"
		ELSE VarChar(Repeat('*', 6 - CHARACTER_LENGTH("p"."FirstName",CODEUNITS32)), 1000) || "p"."FirstName"
	END = '123**John' AND
	"p"."PersonID" = 1

