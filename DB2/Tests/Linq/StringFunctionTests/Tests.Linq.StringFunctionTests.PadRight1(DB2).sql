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
		WHEN CHAR_LENGTH("p"."FirstName") > 6 THEN "p"."FirstName"
		ELSE "p"."FirstName" || VarChar(Repeat(' ', 6 - CHAR_LENGTH("p"."FirstName")), 1000)
	END || '123' = 'John  123' AND
	"p"."PersonID" = 1

