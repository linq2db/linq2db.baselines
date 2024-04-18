BeforeExecute
-- Firebird.4 Firebird4

SELECT
	"p"."PersonID" + 1,
	"p"."FirstName"
FROM
	"Person" "p"
WHERE
	"p"."PersonID" = 1

