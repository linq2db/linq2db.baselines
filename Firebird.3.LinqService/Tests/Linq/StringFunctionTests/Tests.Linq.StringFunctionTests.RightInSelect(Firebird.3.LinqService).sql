BeforeExecute
-- Firebird.3 Firebird3

SELECT
	Right("p"."FirstName", 3)
FROM
	"Person" "p"
WHERE
	"p"."PersonID" = 1

