BeforeExecute
-- Firebird.3 Firebird3

SELECT
	Char_Length("p"."FirstName") = 0
FROM
	"Person" "p"
WHERE
	"p"."PersonID" = 1

