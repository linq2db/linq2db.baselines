BeforeExecute
--  Firebird.4 Firebird4

SELECT
	Char_Length("p"."FirstName") = 0
FROM
	"Person" "p"
WHERE
	"p"."PersonID" = 1

