BeforeExecute
-- Firebird.5 Firebird4

SELECT
	CHAR_LENGTH("p"."FirstName") = 0
FROM
	"Person" "p"
WHERE
	"p"."PersonID" = 1

