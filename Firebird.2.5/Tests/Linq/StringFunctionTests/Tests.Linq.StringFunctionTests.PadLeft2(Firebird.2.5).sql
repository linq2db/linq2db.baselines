BeforeExecute
-- Firebird.2.5 Firebird

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
		WHEN CHAR_LENGTH("p"."FirstName") < CAST(6 AS Int) THEN LPAD("p"."FirstName", CAST(6 AS Int), '*')
		ELSE "p"."FirstName"
	END = '123**John' AND
	"p"."PersonID" = 1

