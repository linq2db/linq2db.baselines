BeforeExecute
--  Firebird.3 Firebird3

SELECT
	"p"."FirstName",
	"p"."PersonID",
	"p"."LastName",
	"p"."MiddleName",
	"p"."Gender"
FROM
	"Person" "p"
WHERE
	(Char_Length("p"."LastName") - Position('p', Reverse("p"."LastName"))) - Char_Length('p') = 1 AND
	Position('p', "p"."LastName") <> 0 AND "p"."PersonID" = 1

