BeforeExecute
-- Firebird.5 Firebird4

SELECT
	("p2"."PersonID" * 2) / CHAR_LENGTH('22'),
	"p2"."FirstName"
FROM
	"Person" "p2"

