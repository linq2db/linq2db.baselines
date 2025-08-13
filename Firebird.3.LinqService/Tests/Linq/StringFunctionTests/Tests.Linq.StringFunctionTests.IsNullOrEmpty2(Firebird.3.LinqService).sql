BeforeExecute
-- Firebird.3 Firebird3

SELECT
	CHAR_LENGTH("p"."FirstName") = 0
FROM
	"Person" "p"
WHERE
	"p"."PersonID" = 1

