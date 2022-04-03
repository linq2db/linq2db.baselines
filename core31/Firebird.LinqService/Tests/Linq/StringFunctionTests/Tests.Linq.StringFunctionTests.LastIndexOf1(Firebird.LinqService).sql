BeforeExecute
-- Firebird

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
		WHEN Position('p', "p"."LastName") = 0
			THEN -1
		ELSE Char_Length("p"."LastName") - Position('p', Reverse("p"."LastName"))
	END = 2 AND
	"p"."PersonID" = 1

