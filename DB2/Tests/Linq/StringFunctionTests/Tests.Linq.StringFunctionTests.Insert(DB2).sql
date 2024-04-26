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
	CASE
		WHEN CHARACTER_LENGTH("p"."FirstName",CODEUNITS32) = 2 THEN "p"."FirstName" || '123'
		ELSE Left("p"."FirstName", 2) || '123' || RIGHT("p"."FirstName", CHARACTER_LENGTH("p"."FirstName",CODEUNITS32) - 2)
	END = 'Jo123hn' AND
	"p"."PersonID" = 1

