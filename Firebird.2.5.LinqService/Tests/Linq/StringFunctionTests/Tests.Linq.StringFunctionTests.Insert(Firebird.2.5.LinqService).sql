BeforeExecute
-- Firebird.2.5 Firebird (asynchronously)

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
		WHEN CHAR_LENGTH("p"."FirstName") = 2 THEN "p"."FirstName" || '123'
		ELSE Left("p"."FirstName", 2) || '123' || RIGHT("p"."FirstName", CHAR_LENGTH("p"."FirstName") - 2)
	END = 'Jo123hn' AND
	"p"."PersonID" = 1

