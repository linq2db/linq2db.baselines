-- Firebird.4 Firebird4

SELECT
	"pp"."PersonID",
	'  ' || "pp"."FirstName" || ' '
FROM
	"Person" "pp"
WHERE
	"pp"."PersonID" = 1 AND Trim('  ' || "pp"."FirstName" || ' ') = 'John'

