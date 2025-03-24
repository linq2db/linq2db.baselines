BeforeExecute
--  Firebird.4 Firebird4

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
		WHEN Char_Length("p"."FirstName") = 2 THEN "p"."FirstName" || '123'
		ELSE Left("p"."FirstName", 2) || '123' || RIGHT("p"."FirstName", Char_Length("p"."FirstName") - 2)
	END = 'Jo123hn' AND
	"p"."PersonID" = 1

