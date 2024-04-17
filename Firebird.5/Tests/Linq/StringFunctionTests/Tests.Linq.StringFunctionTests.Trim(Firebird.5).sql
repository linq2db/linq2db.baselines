BeforeExecute
-- Firebird.5 Firebird4

SELECT
	"p"."PersonID",
	"p"."FirstName"
FROM
	"Person" "p"
WHERE
	Trim('  ' || "p"."FirstName" || ' ') = 'John' AND "p"."PersonID" = 1

